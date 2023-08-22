import 'package:flutter/material.dart';

class Group extends StatelessWidget {
  const Group({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff121B22),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image.asset(
                'assets/whatsapp_group_logo.jpg',
                // height: 250,
                width: double.infinity,
                scale: 3,
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Text(
              "Stay connected with a community",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "communities bring members together in\n topic-based groups, and make it easy to get\n admin announcements. Any community you're\n added to will appear here.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "See example communities",
                  style: TextStyle(color: Color(0xff01B6A3)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color(0xff01B6A3),
                  size: 13,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  // width: MediaQuery.of(context).size.width * 0.75,
                  // height: MediaQuery.of(context).size.height / 25,
                  padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
                  decoration: BoxDecoration(
                      color: const Color(0xff01B6A3),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Start your community",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                    // textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
