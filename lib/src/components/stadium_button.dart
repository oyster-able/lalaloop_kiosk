import 'package:flutter/material.dart';
import '../core/lala_style.dart';

class StadiumButton extends StatelessWidget {
  const StadiumButton({
    required this.label,
    required this.onPressed,
    this.width = 340,
    this.height = 100,
    this.fontSize = 40,
    super.key,
  });
  final String label;
  final void Function()? onPressed;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: LalaBtnStyle.roundedButton(width: width, height: height),
      child: Text(
        label,
        style: TextStyle(
          fontFamily: LalaBtnStyle.fontFamily,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
