import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import './log_handler.dart';
import '../core/extensions.dart';

class DirHelper {
  static String _machineId = '';
  static String _appLogDir = '';
  static String _appLogFile = '';
  DirHelper._();

  static Future<void> init(
      {required String machineId, required String folderName}) async {
    final String originPath = (await getApplicationDocumentsDirectory()).path;
    _machineId = machineId;
    _appLogDir = p.join(originPath, folderName);
    if (await Directory(_appLogDir).exists() == false) {
      await Directory(_appLogDir).create(recursive: true);
    }
    _appLogFile =
        p.join(_appLogDir, '${_machineId}_${DateTime.now().forTitle()}.log');
    LogController.init();
    _deleteStaleLogFile();
  }

  static Future<void> _deleteStaleLogFile() async {
    List<FileSystemEntity> dirs = Directory(_appLogDir).listSync();
    if (dirs.length > 60) {
      dirs.sort((a, b) => a.path.compareTo(b.path));
      final int idx = dirs.length - 60;
      List<FileSystemEntity> dirsToDel = dirs.sublist(0, idx);
      await Future.forEach(dirsToDel, (dir) async {
        await dir.delete(recursive: true);
        LogController.writeLog(
          level: LogLevel.inf,
          tag: LogTag.rmk,
          msg: 'delete ${dir.path}',
        );
      });
    }
  }

  static Future<void> updateLogFile() async {
    if (_appLogDir.isEmpty) return;
    await LogController.writeLog(
      level: LogLevel.inf,
      tag: LogTag.rmk,
      msg: 'close current log file $_appLogFile',
      writeFile: true,
    );

    _appLogFile = p.join(_appLogDir,
        '${_machineId}_${DateTime.now().add(const Duration(days: 1)).forTitle()}.log');
    await LogController.writeLog(
      level: LogLevel.inf,
      tag: LogTag.rmk,
      msg: 'create new log file $_appLogFile',
      writeFile: true,
    );
  }

  static String get machineId => _machineId;
  static String get appLogDir => _appLogDir;
  static String get appLogFile => _appLogFile;
}
