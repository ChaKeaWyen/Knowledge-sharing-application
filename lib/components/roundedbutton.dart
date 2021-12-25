import 'package:almost/login_rewrite/new_login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// ignore: unused_import
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:almost/model/profile.dart';
// ignore: unused_import
import '../../xdlogi_n.dart';

// ignore: must_be_immutable
class RoundedButton extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  final String text;
  final Function press;
  final Color color, textColor;
  RoundedButton({
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
                borderRadius: BorderRadius.all(Radius.circular(10))),
            textStyle: TextStyle(
              fontSize: 20,
            )),
        onPressed: () async {
          //if (formKey.currentState!.validate()) {
          // formKey.currentState!.save();
          //try {
          //await FirebaseAuth.instance.createUserWithEmailAndPassword(
          //    email: profile.email, password: profile.password);
          // formKey.currentState!.reset();
          // } on FirebaseAuthException catch (e) {
          //   print(e.message);
          // }
          // }
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Loginre();
            },
          ));
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            try {
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: profile.email, password: profile.password);
              formKey.currentState!.reset();
            } on FirebaseAuthException catch (e) {
              print(e.message);
            }
          }
        },
      ),
    );
  }
}
