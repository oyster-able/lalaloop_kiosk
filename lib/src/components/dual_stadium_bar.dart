import 'package:flutter/material.dart';

import 'outline_stadium_button.dart';
import 'stadium_button.dart';

class DualStadiumBar extends StatelessWidget {
  const DualStadiumBar({
    required this.leftLabel,
    required this.rightLabel,
    required this.leftFunction,
    required this.rightFunction,
    super.key,
  });
  final String leftLabel;
  final String rightLabel;
  final Function()? leftFunction;
  final Function()? rightFunction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StadiumOutlinedButton(label: leftLabel, onPressed: leftFunction),
        const SizedBox(width: 30),
        StadiumButton(label: rightLabel, onPressed: rightFunction)
      ],
    );
  }
}
