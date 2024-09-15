import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Page extends StatefulWidget {
  const Splash_Page({super.key});

  @override
  State<Splash_Page> createState() => _Splash_PageState();
}

class _Splash_PageState extends State<Splash_Page> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(Duration (seconds:5), (timer) {
      Navigator.of(context).pushReplacementNamed('/rej');
    },);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image:
                    DecorationImage(image: AssetImage('assets/img/poli2.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/img/poli.jpg'))),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'From Stone Redflection',
            style: TextStyle(
                color: Colors.grey.shade800, fontWeight: FontWeight.bold),
          ),

        ],
      ),
    );
  }
}
