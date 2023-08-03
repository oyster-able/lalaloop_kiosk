import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lalaloop_kiosk/lalaloop_kiosk.dart';

void main() {
  group(
    'every button ui test : ',
    () {
      testWidgets(
        'Square button has proper label as argument and onPressed works fine',
        (WidgetTester tester) async {
          int count = 0;
          const String label = '확인';
          Widget squareBtn = SquareButton(
            onPressed: () => count++,
            label: label,
          );
          await tester.pumpWidget(
            MaterialApp(home: squareBtn),
          );

          expect(find.text(label), findsOneWidget);
          await tester.tap(find.byWidget(squareBtn));
          expect(count, 1);
        },
      );
      testWidgets(
        'outline stadium button has proper label as argument and onPressed works fine',
        (WidgetTester tester) async {
          int count = 0;
          const String label = '취소';
          Widget outlineStadiumBtn = OutlinedStadiumButton(
            onPressed: () => count += 2,
            label: label,
          );
          await tester.pumpWidget(
            MaterialApp(home: outlineStadiumBtn),
          );

          expect(find.text(label), findsOneWidget);
          await tester.tap(find.byWidget(outlineStadiumBtn));
          expect(count, 2);
        },
      );
      testWidgets(
        'stadium button has proper label as argument and onPressed works fine',
        (WidgetTester tester) async {
          const String label = '돌아가기';
          int count = 0;
          Widget stadiumBtn = StadiumButton(
            onPressed: () => count += 100,
            label: label,
          );
          await tester.pumpWidget(
            MaterialApp(home: stadiumBtn),
          );

          expect(find.text(label), findsOneWidget);
          await tester.tap(find.byWidget(stadiumBtn));
          await tester.tap(find.widgetWithText(ElevatedButton, label));
          expect(count, 200);
        },
      );
      testWidgets(
        'dual button bar has proper label as argument and onPressed works fine',
        (WidgetTester tester) async {
          int count = 0;
          const String leftLabel = '더하기';
          const String rightLabel = '빼기';
          Widget dualBtn = DualButtonBar(
            leftLabel: leftLabel,
            rightLabel: rightLabel,
            leftFunction: () => count += 1,
            rightFunction: () => count -= 1,
          );
          await tester.pumpWidget(
            MaterialApp(home: dualBtn),
          );

          expect(find.text(leftLabel), findsOneWidget);
          expect(find.text(rightLabel), findsOneWidget);
          await tester.tap(
            find.widgetWithText(ElevatedButton, leftLabel),
            warnIfMissed: false,
          );
          expect(count, 1);
          await tester.tap(
            find.widgetWithText(ElevatedButton, rightLabel),
            warnIfMissed: false,
          );
          expect(count, 0);
        },
      );
    },
  );
}
