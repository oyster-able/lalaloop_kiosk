import 'package:flutter/material.dart';

const Color _sMint = Color(0xff00C4B3);
const Color _sNavy = Color(0xff071E3F);
const Color _sWhite = Colors.white;

class LalaBtnStyle {
  LalaBtnStyle._();
  static String _font = 'SUIT';
  static String get fontFamily => _font;

  static void setFontfamily(String fontFamily) {
    _font = fontFamily;
  }

  static MaterialStateProperty<Color> setButtonColor({
    required Color original,
    required Color pressed,
  }) {
    return MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        return states.contains(MaterialState.pressed) ? pressed : original;
      },
    );
  }

  static MaterialStateProperty<BorderSide> _setButtonBorder({
    required Color original,
    required Color pressed,
    double width = 2,
  }) {
    return MaterialStateProperty.resolveWith<BorderSide>(
      (Set<MaterialState> states) {
        return BorderSide(
          width: width,
          color: states.contains(MaterialState.pressed) ? pressed : original,
        );
      },
    );
  }

  static ButtonStyle roundedButton(
      {required double width, required double height}) {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
      backgroundColor: setButtonColor(original: _sMint, pressed: _sNavy),
      foregroundColor: MaterialStateProperty.all<Color>(_sWhite),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(2),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(height / 2))),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  static ButtonStyle outlinedRoundedButton(
      {required double width, required double height}) {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
      backgroundColor: setButtonColor(original: _sWhite, pressed: _sNavy),
      foregroundColor: setButtonColor(original: _sMint, pressed: _sWhite),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(2),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: _setButtonBorder(original: _sMint, pressed: _sNavy),
    );
  }

  static ButtonStyle squareButton({
    required double width,
    required double height,
    bool forLight = false,
  }) {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
      backgroundColor: setButtonColor(
        original: forLight ? _sWhite : _sMint,
        pressed: _sNavy,
      ),
      foregroundColor: setButtonColor(
        original: forLight ? _sMint : _sWhite,
        pressed: _sWhite,
      ),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0.0),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
