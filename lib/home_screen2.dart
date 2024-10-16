import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home 2',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Go to previous screen ')),
          )
        ],
      ),
    );
  }
}
