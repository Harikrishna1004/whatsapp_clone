import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B2325),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.grey.shade500,
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 45,
                          ),
                        ),
                      ),
                      const Positioned(
                        bottom: 5,
                        right: 1,
                        child: CircleAvatar(
                          radius: 15,
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor: Color(0xff01B6A3),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "My Status",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Tap to add status update",
                        style: TextStyle(color: Colors.grey.shade400),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Viewed updates",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green.shade500,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundColor: const Color(0xff0B2325),
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: Colors.grey.shade800,
                            child: const Icon(
                              Icons.person,
                              size: 44,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ramu Kaka",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                color: Colors.white),
                          ),
                          Text(
                            "Today, 11:32",
                            style: TextStyle(color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                indent: 0,
                endIndent: 0,
                color: Colors.white,
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
                    size: 13,
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
