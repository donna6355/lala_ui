## Features

Common buttons and clock widgets for LalaLoop Kiosk Design.

## Getting started

add font 'SUIT' in project pubspec.yaml

## Usage

```dart
//To set fontFamily, add font files to pubspec.yaml and call this methods before runApp();
void main() {
  LalaBtnStyle.setFontfamily('GamjaFlower');
  runApp(const MyApp());
}


Clock(color:Colors.black)
//optional : fontSize, fontWeight

SquareButton(
    label:'CONFIRM',
    onPressed:(){},
)
//optional : width, height, forLight, fontSize

OutlineStadiumButton(
    label:'CANCEL',
    onPressed:(){},
)
//optional : width, height, fontSize

StadiumButton(
    label:'Isaac',
    onPressed:(){},
)
//optional : width, height, fontSize

DualButtonBar(
    leftLabel: 'Lala',
    rightLabel: 'Loop',
    leftFunction: (){},
    rightFunction: (){},
)
//optional : buttonWidth, buttonHeight, fontSize
```
