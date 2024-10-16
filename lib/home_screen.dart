import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Home 1'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('Getx'),
              subtitle: const Text('Dialogue alert!'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: const EdgeInsets.all(20),
                    middleText: 'Are you sure you want to delete this chat?',
                    contentPadding: const EdgeInsets.all(20),
                    textConfirm: 'Yes',
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text('Ok')),
                    cancel: TextButton(
                        onPressed: () {}, child: const Text('Cancel')));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Getx Bottom Sheet'),
              subtitle: const Text('Dialogue alert!'),
              onTap: () {
                Get.bottomSheet(Container(
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.light_mode),
                        title: const Text('Light theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.dark_mode),
                        title: const Text('Dark theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(HomeScreen2());
                          },
                          child: Center(child: Text('Go to Screen 2')))
                    ],
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
