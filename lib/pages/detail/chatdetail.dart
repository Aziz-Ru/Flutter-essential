import 'package:flutter/material.dart';
import 'package:flutter_essential/model/userlist.dart';

class ChatDetailPage extends StatefulWidget {
  final Users user;
  const ChatDetailPage(this.user, {super.key});

  @override
  State<ChatDetailPage> createState() => _ChatDetailPage(user);
}

class _ChatDetailPage extends State<ChatDetailPage> {
  final Users user;
  _ChatDetailPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text('This is Chat detail page'),
      ),
    );
  }
}
