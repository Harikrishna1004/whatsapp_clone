import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B2325),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Color(0xff01B6A3),
                    radius: 28,
                    child: Icon(
                      Icons.link_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create call link",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Share a link for your whatsApp call",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Recent",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 26,
                      backgroundColor: Colors.grey.shade800,
                      child: const Icon(
                        Icons.person,
                        size: 44,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mahesh Dalle",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.arrow_outward,
                              color: Colors.green,
                            ),
                            Text(
                              "Today, 12:16",
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.call,
                        color: Color(0xff01B6A3),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                indent: 0,
                endIndent: 0,
                color: Colors.grey.shade400,
                thickness: 0.5,
              ),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock,
                    color: Colors.grey.shade400,
                    size: 14,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Your status updates are ",
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey.shade400)),
                      const TextSpan(
                          text: "end to end encrypted",
                          style:
                              TextStyle(color: Color(0xff01B6A3), fontSize: 13))
                    ]),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
