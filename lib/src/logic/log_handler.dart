import 'dart:io';
import '../core/extensions.dart';
import './dir_helper.dart';

enum LogLevel {
  inf,
  tcp,
  api,
  pcb,
  bcd,
  ntw;

  @override
  String toString() => name.toUpperCase();
}

enum LogTag {
  scr,
  snd,
  rcv,
  err,
  rmk;

  @override
  String toString() => '[${name.toUpperCase()}]';
}

class LogController {
  LogController._();
  static String _log = '';

  static Future<void> init() async {
    await writeLog(
        level: LogLevel.inf,
        tag: LogTag.rmk,
        msg:
            '===============================KIOSK_START===============================');
  }

  static Future<void> writeLog({
    required LogLevel level,
    required LogTag tag,
    required String msg,
    bool writeFile = false,
  }) async {
    _log =
        '$_log${DateTime.now().forLogData()} ${level.toString()} ${tag.toString()} $msg\r\n';
    if (!writeFile) return;
    await File(DirHelper.appLogFile).writeAsString(_log, mode: FileMode.append);
    _log = '';
  }
}
