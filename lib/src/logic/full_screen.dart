import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

Future<void> setFullScreen({double width = 1920, double height = 1080}) async {
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = WindowOptions(
    size: Size(width, height),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    titleBarStyle: TitleBarStyle.hidden,
  );
  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.setFullScreen(true);
    await windowManager.show();
    await windowManager.focus();
  });
}
