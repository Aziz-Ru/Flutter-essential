import 'package:flutter/material.dart';
import 'package:flutter_essential/pages/callpage.dart';
import 'package:flutter_essential/pages/chatpage.dart';
import 'package:flutter_essential/pages/profilepage.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _Homepage();
}

class _Homepage extends State<MyTabbar> with SingleTickerProviderStateMixin {
  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.message),
    ),
    const Tab(
      icon: Icon(Icons.call),
    ),
    const Tab(
      icon: Icon(Icons.person),
    ),
  ];

  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Whatsapp-Clone'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [ChatPage(), CallPage(), ProfilePage()],
      ),
    );
  }
}
