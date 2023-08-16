import 'package:flutter/material.dart';

import '../core/lala_style.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(this.label, {super.key});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: LalaCommonStyle.header,
    );
  }
}

class DialogHeaderText extends StatelessWidget {
  const DialogHeaderText(this.label, {super.key});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: LalaCommonStyle.dialogHeader,
    );
  }
}

class DialogSubHeaderText extends StatelessWidget {
  const DialogSubHeaderText(this.label, {super.key});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: LalaCommonStyle.dialogSubHeader,
    );
  }
}
