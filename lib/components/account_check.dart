// ignore: unused_import
import 'package:almost/SignUp_rewrite/SignUp_screen.dart';
// ignore: unused_import
import 'package:almost/login_rewrite/new_login.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccount({
    Key? key,
    this.login = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an account ?" : "Already have an Account ?",
          style: TextStyle(
            fontSize: 17,
            color: Colors.grey[700],
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Loginre();
                  },
                ),
              );
            },
            child: Text(
              login ? "SIGN IN" : "SIGN IN",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ))
      ],
    );
  }
}
