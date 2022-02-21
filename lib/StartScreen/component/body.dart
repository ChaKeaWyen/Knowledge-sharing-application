import 'package:almost/SignUp_rewrite/SignUp_screen.dart';
import 'package:almost/login_rewrite/new_login.dart';
import 'package:almost/screen/login.dart';
import 'package:almost/screen/register.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return SignUpre();
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
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
          )
        ],
      ),
    );
  }
}
