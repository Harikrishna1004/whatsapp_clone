import 'package:flutter/material.dart';
import 'package:whatsapp_clone/settings_page.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: const DefaultTabController(length: 4, child: HomePage()),
    );
  }
}
