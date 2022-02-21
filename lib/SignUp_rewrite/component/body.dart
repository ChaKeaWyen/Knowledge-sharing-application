import 'package:almost/SignUp_rewrite/component/Background.dart';
import 'package:almost/components/already_have_an_account_check.dart';
import 'package:almost/components/roundedbutton.dart';
import 'package:almost/login_rewrite/new_login.dart';
import 'package:almost/model/constant.dart';
import 'package:almost/model/profile.dart';
// ignore: unused_import
import 'package:almost/screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
          Text(
            "REGISTER",
            style:
                GoogleFonts.pushster(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    scrollPadding: const EdgeInsets.all(10.0),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.5),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      hintText: "E-mail",
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.black,
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "กรุณาป้อนอีเมล์ด้วยงับ"),
                      EmailValidator(errorText: "รูปแบบอีเมลล์ไม่ถูกต้อง")
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String? email) {
                      profile.email = email!;
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    scrollPadding: const EdgeInsets.all(10.0),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.5),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.black,
                    ),
                    validator: RequiredValidator(
                        errorText: "กรุณากรอกรหัสผ่านด้วยงับ"),
                    obscureText: true,
                    onSaved: (String? password) {
                      profile.password = password!;
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Wine,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            try {
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: profile.email,
                                      password: profile.password)
                                  .then((value) {
                                formKey.currentState!.reset();
                                Fluttertoast.showToast(
                                    msg: "Register successfully",
                                    gravity: ToastGravity.CENTER);
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginScreen();
                                }));
                              });
                            } on FirebaseAuthException catch (e) {
                              Fluttertoast.showToast(
                                  msg: e.code, gravity: ToastGravity.CENTER);
                            }
                          }
                        }),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            swap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ])));
  }
}
