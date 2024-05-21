import 'package:flutter/material.dart';
import 'package:flutter_essential/model/userCallList.dart';

class Calldetail extends StatelessWidget {
  final UserCallList userCallList;
  const Calldetail(this.userCallList, {super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    if (userCallList == null) {
      return const Center(
        child: Text("this Null"),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(userCallList.name),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text('${userCallList.name}'),
      ),
    );
  }
}
