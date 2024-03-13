import 'package:flutter/material.dart';

class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Chat App"),
          backgroundColor: Colors.blueGrey[600],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.chat_bubble),
                text: "Chats",
              ),
              Tab(
                icon: Icon(Icons.video_call),
                text: "Calls",
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: "Settings",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text(
                "Chats",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                "Calls",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
