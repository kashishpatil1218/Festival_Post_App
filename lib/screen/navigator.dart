import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:festivalapp/screen/personalDeyailpage.dart';
import 'package:festivalapp/screen/splash_Page.dart';
import 'package:festivalapp/screen/start1_page.dart';
import 'package:flutter/material.dart';

import '../utils/global.dart';
import 'Post_page.dart';
import 'ViewPage.dart';
import 'edit_page.dart';

class Navigator_Page extends StatefulWidget {
  const Navigator_Page({super.key});

  @override
  State<Navigator_Page> createState() => _Navigator_PageState();
}

class _Navigator_PageState extends State<Navigator_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: screenList[nav],
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {
          setState(() {
            nav=value;
          });
        },
        backgroundColor: Colors.black,
        color: Color(0xFFE4C804),
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.post_add,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],

      ),
    );
  }
}

List<Widget> screenList=[
  Start1_Page(),
  View_Page(),
  personal_Page(),

];