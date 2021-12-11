import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
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
          onTap: () {},
          child: Text(
            login ? "SIGN UP" : "Sign in",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 17,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
