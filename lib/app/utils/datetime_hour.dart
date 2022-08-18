import 'package:cloud_firestore/cloud_firestore.dart';

String timestampHour(Timestamp time) {
  var dateTime =
      DateTime.fromMillisecondsSinceEpoch(time.millisecondsSinceEpoch);

  return "${dateTime.hour}:${dateTime.minute}";
}
