import 'package:festivalapp/screen/Post_page.dart';
import 'package:festivalapp/screen/ViewPage.dart';
import 'package:festivalapp/screen/edit_page.dart';
import 'package:festivalapp/screen/login_page.dart';
import 'package:festivalapp/screen/navigator.dart';
import 'package:festivalapp/screen/personalDeyailpage.dart';
import 'package:festivalapp/screen/regestre_page.dart';
import 'package:festivalapp/screen/splash_Page.dart';
import 'package:festivalapp/screen/start1_page.dart';
import 'package:flutter/material.dart';

import 'screen/Post_page.dart';
import 'screen/ViewPage.dart';
import 'screen/edit_page.dart';
import 'screen/login_page.dart';
import 'screen/navigator.dart';
import 'screen/personalDeyailpage.dart';
import 'screen/regestre_page.dart';
import 'screen/splash_Page.dart';
import 'screen/start1_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/':(context)=> const Splash_Page(),
        '/rej':(context)=> const Regester_Page(),
        '/login':(context)=> const Login_Page(),
        '/start':(context)=> const  Start1_Page(),
        '/view':(context)=> const  View_Page(),
        '/edit':(context)=> const  Edit_Page(),
        '/post':(context)=> const  Post_Page(),
        '/nav':(context)=> const  Navigator_Page(),
        '/per':(context)=> const  personal_Page(),

      },

    );
  }
}
