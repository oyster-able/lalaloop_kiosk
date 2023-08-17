import 'package:flutter/material.dart';

import '../core/lala_style.dart';

class AlertToast extends StatelessWidget {
  const AlertToast(this.label, {super.key});
  final String label;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        height: 74,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(74),
          color: Colors.black87,
        ),
        child: Row(
          children: [
            const Image(
              image: AssetImage('lib/src/assets/alert.png',
                  package: 'lalaloop_kiosk'),
              height: 34,
            ),
            const SizedBox(width: 15),
            Text(label, style: LalaCommonStyle.alert),
          ],
        ),
      ),
    );
  }
}
