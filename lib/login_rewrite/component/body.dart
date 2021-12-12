import 'package:almost/login_rewrite/component/background.dart';
import 'package:flutter/material.dart';
import '../../components/already_have_an_account_check.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import '../../components/roundedbutton.dart';

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