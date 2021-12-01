import 'package:almost/screen/login.dart';
// ignore: unused_import
import 'package:almost/screen/register.dart';
import 'package:flutter/material.dart';

import '../xd_profile.dart';
import '../xdhom_e.dart';
import '../xdlogi_n.dart';
import '../xdregiste_r.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register/Login"),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text("Register", style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterScreen();
                }));
              },
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: Icon(Icons.login),
              label: Text("Log in", style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return XDLOGIN();
                }));
              },
            ),
          )
        ],
      ),
    );
  }
}
