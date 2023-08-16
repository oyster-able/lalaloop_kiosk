import 'package:flutter/material.dart';

const Color _sMint = Color(0xff00C4B3);
const Color _sNavy = Color(0xff071E3F);
const Color _sFadeNavy = Color(0xFF3F5574);
const Color _sWhite = Colors.white;
const Color _sGray = Color(0xFFC4C4C4);

class LalaCommonStyle {
  LalaCommonStyle._();
  static Color get white => _sWhite;
  static Color get navy => _sNavy;
  static Color get mint => _sMint;
  static Color get gray => _sGray;

  static TextStyle header = TextStyle(
    color: _sNavy,
    fontSize: 48,
    fontFamily: LalaBtnStyle.fontFamily,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );
  static TextStyle subHeader = TextStyle(
    color: _sFadeNavy,
    fontSize: 30,
    fontFamily: LalaBtnStyle.fontFamily,
    fontWeight: FontWeight.w700,
    height: 1.5,
  );
  static TextStyle dialogHeader = TextStyle(
    color: _sNavy,
    fontSize: 50,
    fontFamily: LalaBtnStyle.fontFamily,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
    height: 1.5,
  );
  static TextStyle dialogSubHeader = TextStyle(
    color: _sFadeNavy,
    fontSize: 40,
    fontFamily: LalaBtnStyle.fontFamily,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.none,
    height: 1.5,
  );
  static TextStyle alert = TextStyle(
    color: _sWhite,
    fontSize: 36,
    fontWeight: FontWeight.w500,
    fontFamily: LalaBtnStyle.fontFamily,
    height: 0.97,
  );
}

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

  static ButtonStyle stadiumoutlinedButton(
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

  static ButtonStyle roundedOutlinedButton({
    required double width,
    required double height,
  }) {
    return ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(Size(width, height)),
      backgroundColor: MaterialStateProperty.all<Color>(_sWhite),
      overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(3),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: _setButtonBorder(
        original: _sGray,
        pressed: _sMint,
        width: 4,
      ),
    );
  }
}
