// ignore_for_file: prefer_const_constructors

import 'package:drone_app/constanst/constanst.dart';
import 'package:drone_app/pages/login_pages/login_page.dart';
import 'package:drone_app/pages/login_pages/wlecome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimryColor,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => WlemomePage(),
        '/login' :(context) => LoginPage(),
        // '/singin':(context) => 
      },
      initialRoute: '/',
    );
  }
}
