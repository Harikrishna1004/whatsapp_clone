import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 350,
                decoration: const BoxDecoration(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
