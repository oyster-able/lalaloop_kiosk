import 'package:flutter/material.dart';

import '../core/lala_style.dart';

class SquareButton extends StatelessWidget {
  const SquareButton({
    required this.onPressed,
    required this.label,
    this.width = 1424,
    this.height = 115,
    this.forLight = false,
    this.fontSize = 40,
    super.key,
  });

  final void Function()? onPressed;
  final String label;
  final bool forLight;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: LalaBtnStyle.squareButton(
        forLight: forLight,
        width: width,
        height: height,
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontFamily: LalaBtnStyle.fontFamily,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
