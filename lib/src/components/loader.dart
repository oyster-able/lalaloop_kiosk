import 'package:flutter/material.dart';
import 'header_text.dart';
import '../core/lala_style.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 700,
      color: LalaCommonStyle.white,
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 78, bottom: 95),
            child: DialogHeaderText('잠시만 기다려 주세요'),
          ),
          Image(
            image: AssetImage(
              'lib/src/assets/loader.gif',
              package: 'lala_ui',
            ),
          ),
        ],
      ),
    );
  }
}
