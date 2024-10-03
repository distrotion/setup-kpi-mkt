import 'package:intl/intl.dart';

import 'Safty.dart';

String readTimestamp(String timestampinput) {
  // print(timestampinput);
  // print(timestampinput.length);
  int timestamp = 0;
  if (timestampinput.length > 17) {
    if (timestampinput.length == 19) {
      timestamp = int.parse(ConverstStr(timestampinput)) ~/ 1000;
    } else {
      timestamp = int.parse(ConverstStr(timestampinput));
    }
  } else {
    timestamp = int.parse(ConverstStr(timestampinput)) * 1000;
  }
  // print(timestamp);

  var now = DateTime.now();
  var format = DateFormat('dd/MM/yyyy, HH:mm');
  var date = DateTime.fromMicrosecondsSinceEpoch(timestamp);
  var diff = date.difference(now);
  var time = '';

  time = format.format(date);

  // if (diff.inSeconds <= 0 ||
  //     diff.inSeconds > 0 && diff.inMinutes == 0 ||
  //     diff.inMinutes > 0 && diff.inHours == 0 ||
  //     diff.inHours > 0 && diff.inDays == 0) {
  //   time = format.format(date);
  // } else {
  //   if (diff.inDays == 1) {
  //     time = diff.inDays.toString() + 'DAY AGO';
  //   } else {
  //     time = diff.inDays.toString() + 'DAYS AGO';
  //   }
  // }

  return time;
}
