// ignore: unused_import
import 'package:almost/SignUp_rewrite/SignUp_screen.dart';
// ignore: unused_import
import 'package:almost/login_rewrite/new_login.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function swap;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.swap,
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
            onTap: swap(),
            child: Text(
              login ? "SIGN UP" : "SIGN IN",
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
