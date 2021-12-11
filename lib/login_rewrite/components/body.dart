import 'package:almost/screen_rewrite/components_login/background.dart';
// ignore: unused_import
import 'package:almost/xdlogi_n.dart';
import 'package:flutter/material.dart';

import 'already_have_an_account_check.dart';
import 'rounded_input_field.dart';
import 'rounded_password_field.dart';
import 'roundedbutton.dart';
// ignore: unused_import
import 'textfield_container.dart';

class Body extends StatelessWidget {
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    //Provides total height and width of the screen
    return Background(
        child: SingleChildScrollView(
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
          SizedBox(
            height: size.height * 0.1,
          ),
          RoundedInputField(
            hintText: "Username",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {},
          )
        ])));
  }
}
