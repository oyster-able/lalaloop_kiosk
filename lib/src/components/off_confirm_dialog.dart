import 'package:flutter/material.dart';
import '../../lalaloop_kiosk.dart';

class OffCofirmDialog extends StatelessWidget {
  const OffCofirmDialog({
    required this.forApp,
    required this.cancelFn,
    required this.confirmFn,
    super.key,
  });
  final bool forApp;
  final void Function()? cancelFn;
  final void Function()? confirmFn;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1150,
      height: 750,
      color: LalaCommonStyle.white,
      child: Column(
        children: [
          const SizedBox(height: 58),
          DialogHeaderText(forApp ? '프로그램 종료' : 'PC 종료'),
          DialogSubHeaderText(forApp ? '프로그램을 종료하시겠습니까?' : 'PC를 종료하시겠습니까?'),
          Expanded(
            child: Center(
              child: Image(
                image: AssetImage(
                  forApp
                      ? 'lib/src/assets/app_off.png'
                      : 'lib/src/assets/pc_off.png',
                  package: 'lala_ui',
                ),
                height: 230,
              ),
            ),
          ),
          DualButtonBar(
            leftLabel: '취소',
            rightLabel: '확인',
            leftFunction: cancelFn,
            rightFunction: confirmFn,
          ),
        ],
      ),
    );
  }
}
