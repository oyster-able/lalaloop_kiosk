## Features

Common buttons and clock widgets for LalaLoop Kiosk Design.

## Getting started

add font 'SUIT' in project pubspec.yaml

## Usage

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //If you want to set fontFamily, add font files to pubspec.yaml and call this methods before runApp();
  //default fontFamily is SUIT
  LalaBtnStyle.setFontfamily('GamjaFlower');

  //this will create directory of '${folderName}' at Documents directory
  //'${_machineId}_YYYY-MM-DD.log' file will be created under the directory
  await DirHelper.init(machineId: 'machineId', folderName: 'lala_ui_test');

  runApp(const MyApp());
}


Clock(color:Colors.black)
//optional : fontSize, fontWeight

SquareButton(
    label:'CONFIRM',
    onPressed:(){},
)
//optional : width, height, forLight, fontSize

StadiumOutlinedButton(
    label:'CANCEL',
    onPressed:(){},
)
//optional : width, height, fontSize

StadiumButton(
    label:'Isaac',
    onPressed:(){},
)
//optional : width, height, fontSize

FakeStadiumButton(
    label:'FakeButton',
)
//optional : width, height, fontSize

RoundedOutlinedButton(
    Child:Text('Widget required'),
    onPressed:(){},
)
//optional : width, height

DualButtonBar(
    leftLabel: 'Lala',
    rightLabel: 'Loop',
    leftFunction: (){},
    rightFunction: (){},
)
//optional : buttonWidth, buttonHeight, fontSize

AlertToast('Toast Message')
HeaderText('Header')
DialogHeaderText('Dialog Header')
DialogSubHeaderText('Dialog Sub Header')

OffCofirmDialog(
  forApp : true, // false to turn off PC
  cancelFn:(){},
  confirmFn:(){},
)
Loader()

```
