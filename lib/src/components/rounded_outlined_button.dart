import 'package:flutter/material.dart';

import '../core/lala_style.dart';

class RoundedOutlinedButton extends StatelessWidget {
  const RoundedOutlinedButton({
    required this.onPressed,
    required this.child,
    this.width = 300,
    this.height = 300,
    super.key,
  });
  final void Function()? onPressed;
  final double width;
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: LalaBtnStyle.roundedOutlinedButton(
        width: width,
        height: height,
      ),
      child: child,
    );
  }
}
