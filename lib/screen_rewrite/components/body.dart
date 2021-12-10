import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Provides total height and width of the screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Image.asset("assets/images/Color bar.png"),
          ),
        ],
      ),
    );
  }
}
