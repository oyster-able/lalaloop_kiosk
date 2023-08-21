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
      textAlign: TextAlign.center,
    );
  }
}

class SubHeaderText extends StatelessWidget {
  const SubHeaderText(this.label, {super.key});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: LalaCommonStyle.subHeader,
      textAlign: TextAlign.center,
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
      textAlign: TextAlign.center,
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
      textAlign: TextAlign.center,
    );
  }
}
