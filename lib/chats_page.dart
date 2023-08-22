import 'package:flutter/material.dart';
import 'package:whatsapp_clone/user_data.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  late Future<List<User>> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = UserService().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff121B22),
        body: FutureBuilder<List<User>>(
            future: futureUsers,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      User user = snapshot.data?[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.grey,
                                  // child: Icon(
                                  //   Icons.person,
                                  //   size: 44,
                                  //   color: Colors.white,
                                  // ),
                                  backgroundImage: NetworkImage(user.imgUrl),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      user.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 19,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      user.message,
                                      style: TextStyle(
                                          color: Colors.grey.shade400,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text("18.35",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey.shade400)),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else if (snapshot.hasError) {
                return Text('Error ${snapshot.error}');
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }));
  }
}
