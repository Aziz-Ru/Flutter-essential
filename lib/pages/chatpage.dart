import 'package:flutter/material.dart';
import 'package:flutter_essential/model/userlist.dart';
import 'package:flutter_essential/pages/detail/chatdetail.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) => Column(
                children: [
                  ListTile(
                    // selectedTileColor: Colors.black,
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: Text(userList[index].avatar),
                    ),
                    title: Text(
                      userList[index].name,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text(userList[index].message),
                    trailing: Text(userList[index].time),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  ChatDetailPage(userList[index])));
                    },
                  ),
                  const Divider(
                    height: 10.0,
                  ),
                ],
              )),
    );
  }
}
