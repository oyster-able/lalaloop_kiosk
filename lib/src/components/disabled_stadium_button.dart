import 'package:flutter/material.dart';

import '../core/lala_style.dart';

class FakeStadiumButton extends StatelessWidget {
  const FakeStadiumButton({
    required this.label,
    this.width = 340,
    this.height = 100,
    this.fontSize = 40,
    super.key,
  });
  final String label;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: LalaCommonStyle.gray,
        borderRadius: BorderRadius.circular(height),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: LalaCommonStyle.white,
            fontFamily: LalaBtnStyle.fontFamily,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
