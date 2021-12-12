import 'package:flutter/material.dart';

import '../../xdlogi_n.dart';

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
      margin: EdgeInsets.symmetric(vertical: 50),
      width: size.width * 0.7,
      child: TextButton(
        child: Text(text),
        style: TextButton.styleFrom(
            primary: textColor,
            backgroundColor: Colors.grey[700],
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
      ),
    );
  }
}
