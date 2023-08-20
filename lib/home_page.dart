import 'package:flutter/material.dart';
import 'status_page.dart';

import 'calls_page.dart';
import 'chats_page.dart';
import 'group_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff26323E),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.grey.shade400, fontSize: 22),
        ),
        actions: const [
          Icon(
            Icons.camera_alt_outlined,
            color: Color(0xff778089),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            color: Color(0xff778089),
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.menu,
            color: Color(0xff778089),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        bottom: TabBar(
          indicatorColor: const Color(0xff01B6A3),
          indicatorWeight: 3.0,
          labelColor: const Color(0xff01B6A3),
          unselectedLabelColor: Colors.grey.shade400,
          tabs: const [
            Icon(
              Icons.groups_2,
              size: 28,
            ),
            Text(
              "Chats",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Status",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "Calls",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
      body: const TabBarView(children: [
        Group(),
        Chats(),
        Status(),
        Calls(),
      ]),
    );
  }
}
