import 'package:almost/screen_rewrite/components/background.dart';
import 'package:almost/xdlogi_n.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    //Provides total height and width of the screen
    return Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
                fontFamily: "Segoe UI",
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
          RoundedButton(
            text: "Register",
            press: () {},
          )
        ]));
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.black,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.7,
        child: TextButton(
          child: Text('Register'),
          style: TextButton.styleFrom(
              primary: textColor,
              backgroundColor: Colors.black,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              textStyle: TextStyle(
                fontSize: 20,
              )),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return XDLOGIN();
              },
            ));
          },
        ));
  }
}
