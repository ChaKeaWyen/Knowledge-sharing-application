import 'package:almost/screen_rewrite/components/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Provides total height and width of the screen
    return Background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOGIN",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    ));
  }
}
