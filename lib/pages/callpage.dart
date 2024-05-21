import 'package:flutter/material.dart';
import 'package:flutter_essential/model/usercalllist.dart';
import 'package:flutter_essential/pages/detail/calldetailpage.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPage();
}

class _CallPage extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: userCallList.length,
            itemBuilder: (context, index) => Column(
                  children: [
                    const Divider(
                      height: 5.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(userCallList[index].avatar),
                      ),
                      title: Text(userCallList[index].name),
                      subtitle: Row(
                        children: [
                          Container(
                            child: userCallList[index].callType,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(userCallList[index].time),
                          ),
                          Text(userCallList[index].lastDate),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.call,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Calldetail(userCallList[index])));
                      },
                    )
                  ],
                )));
  }
}
