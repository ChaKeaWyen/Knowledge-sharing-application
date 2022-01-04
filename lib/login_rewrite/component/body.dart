import 'package:almost/SignUp_rewrite/SignUp_screen.dart';
import 'package:almost/pages/homepages.dart';
import 'package:almost/login_rewrite/component/background.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            style:
                GoogleFonts.pushster(fontSize: 50, fontWeight: FontWeight.bold),
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
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Homere();
                  },
                ),
              );
            },
          ),
          SizedBox(
            height: size.height * 0,
          ),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpre();
                  },
                ),
              );
            },
          )
        ])));
  }
}
