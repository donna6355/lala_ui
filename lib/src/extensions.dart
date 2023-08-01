extension TimeFormat on DateTime {
  List<String> forClock() {
    return [
      toString().substring(0, 10).replaceAll('-', '.'),
      hour < 12 ? 'AM' : 'PM',
      '${(hour < 13 ? hour : hour - 12).toTwoDigit()}:${minute.toTwoDigit()}',
    ];
  }
}

extension NumFormat on int {
  String toTwoDigit() {
    return toString().padLeft(2, '0');
  }
}
