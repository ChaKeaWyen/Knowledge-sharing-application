// ignore: unused_import
import 'package:almost/screen/Home.dart';
import 'package:almost/login_rewrite/constant.dart';
import 'package:almost/login_rewrite/new_login.dart';
import 'package:flutter/material.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      theme: ThemeData(
        primaryColor: Bgcolor,
        scaffoldBackgroundColor: Color(0xffedd9d4),
      ),
      home: Loginre(),
    );
  }
}
