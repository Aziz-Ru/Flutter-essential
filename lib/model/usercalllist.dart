import 'package:flutter/material.dart';

class UserCallList {
  final String name;
  final String time;
  final String lastDate;
  final String avatar;
  final Icon callType;
  static Icon callReceived = const Icon(
    Icons.call_received,
    size: 18,
    color: Colors.green,
  );
  static Icon callMissed = const Icon(
    Icons.call_missed,
    size: 18,
    color: Colors.red,
  );
  static Icon callMade = const Icon(
    Icons.call_made,
    size: 18,
    color: Colors.green,
  );

  UserCallList(
      {required this.name,
      required this.time,
      required this.lastDate,
      required this.avatar,
      required this.callType});
}

List<UserCallList> userCallList = [
  UserCallList(
      name: 'Kabbo',
      time: "12:01:23",
      lastDate: "12/3/24",
      avatar: "K",
      callType: UserCallList.callMade),
  UserCallList(
      name: 'Tony Stark',
      time: "2:12:20",
      lastDate: "12/3/24",
      avatar: "T",
      callType: UserCallList.callMissed),
  UserCallList(
      name: 'Bruce Wayne',
      time: "8:11:03",
      lastDate: "12/3/24",
      avatar: "B",
      callType: UserCallList.callMissed),
  UserCallList(
      name: 'Captain America',
      time: "2:01:23",
      lastDate: "12/3/24",
      avatar: "K",
      callType: UserCallList.callReceived),
  UserCallList(
      name: 'Sunder Pichai',
      time: "01:55:23",
      lastDate: "12/3/24",
      avatar: "S",
      callType: UserCallList.callMissed),
  UserCallList(
      name: 'Elon Musk',
      time: "12:12:23",
      lastDate: "12/3/24",
      avatar: "E",
      callType: UserCallList.callMade),
];
