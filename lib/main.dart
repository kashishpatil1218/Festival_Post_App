import 'package:festivalapp/screen/ViewPage.dart';
import 'package:festivalapp/screen/edit_page.dart';
import 'package:festivalapp/screen/login_page.dart';
import 'package:festivalapp/screen/regestre_page.dart';
import 'package:festivalapp/screen/start1_page.dart';
import 'package:flutter/material.dart';

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
        '/':(context)=> const Regester_Page(),
        '/login':(context)=> const Login_Page(),
        '/start':(context)=> const  Start1_Page(),
        '/view':(context)=> const  View_Page(),
        '/edit':(context)=> const  Edit_Page(),

      },

    );
  }
}
