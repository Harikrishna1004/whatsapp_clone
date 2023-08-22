import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chats_page.dart';
import 'package:whatsapp_clone/home_page.dart';
import 'settings_options.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B2325),
      appBar: AppBar(
        backgroundColor: const Color(0xff26323E),
        //Back to Home page
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.search,
              size: 28,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey.shade600,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 38,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hari",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Available",
                        style: TextStyle(color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.qr_code,
                    color: Color(0xff01B6A3),
                    size: 30,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                indent: 0,
                endIndent: 0,
                thickness: 0.5,
                color: Colors.grey.shade400,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SettingOptions(
                      icon: Icons.key,
                      title: "Account",
                      details: "Security notifications, change\nnumber"),
                  SettingOptions(
                      icon: Icons.lock,
                      title: "Privacy",
                      details: "Block contacts, disappearing\nmessages"),
                  SettingOptions(
                      icon: Icons.tag_faces_rounded,
                      title: "Avatar",
                      details: "Create, edit, profile photo"),
                  SettingOptions(
                      icon: Icons.message_rounded,
                      title: "Chats",
                      details: "Theme, wallpapers, chat history"),
                  SettingOptions(
                      icon: Icons.notifications,
                      title: "Notifications",
                      details: "Message, group & call tones"),
                  SettingOptions(
                      icon: Icons.data_saver_off_sharp,
                      title: "Storage and data",
                      details: "Network usage, auto-download"),
                  SettingOptions(
                      icon: Icons.language,
                      title: "App language",
                      details: "English (device's language)")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
