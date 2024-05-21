import 'package:flutter/material.dart';
import 'package:flutter_essential/model/userCallList.dart';
import 'package:flutter_essential/pages/calldetailpage.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListView();
}

class _MyListView extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          backgroundColor: Theme.of(context).primaryColor,
        ),
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
                                builder: (context) =>  Calldetail(userCallList[index])));
                      },
                    )
                  ],
                )));
  }
}
