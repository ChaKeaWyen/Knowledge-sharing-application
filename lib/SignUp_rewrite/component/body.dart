import 'package:almost/SignUp_rewrite/component/Background.dart';
import 'package:almost/components/account_check.dart';
import 'package:almost/components/already_have_an_account_check.dart';
import 'package:almost/components/rounded_input_field.dart';
import 'package:almost/components/rounded_passconfirmed_field.dart';
import 'package:almost/components/rounded_password_field.dart';
import 'package:almost/components/roundedbutton.dart';
// ignore: unused_import
import 'package:almost/screen/login.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          SizedBox(
            height: size.height * 0.1,
          ),
          Text(
            "REGISTER",
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
          RoundedPasswordConfirmedField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "REGISTER",
            press: () {},
          ),
          AlreadyHaveAnAccount(
            login: false,
            press: () {},
          ),
        ])));
  }
}
