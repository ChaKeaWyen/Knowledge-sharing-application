//import 'package:almost/screen/Home.dart';
// ignore: unused_import
import 'package:almost/SignUp_rewrite/SignUp_screen.dart';
import 'package:almost/constant.dart';
// ignore: unused_import
import 'package:almost/login_rewrite/new_login.dart';
import 'package:almost/screen/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBu2W7eoSur5RAc2CqoNNjZZVd3xmaKy4k",
      appId: "com.example.almost",
      messagingSenderId: "XXX",
      projectId: "flutter-app-282df",
    ),
  );
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
      home: RegisterScreen(),
    );
  }
}
