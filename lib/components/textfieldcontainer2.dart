import 'package:flutter/material.dart';
import 'package:almost/model/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TextFieldContainer2 extends StatefulWidget {
  final Widget child;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  TextFieldContainer2({
    Key? key,
    required this.child,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<TextFieldContainer2> createState() => _TextFieldContainer2State();
}

class _TextFieldContainer2State extends State<TextFieldContainer2> {
  final formKey = GlobalKey<FormState>();

  Profile profile = Profile(email: '', password: '');

  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                width: size.width * 0.7,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(29)),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                            validator: MultiValidator([
                              RequiredValidator(
                                  errorText: "Please enter your Email"),
                              EmailValidator(errorText: "Invalid Email format")
                            ]),
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (String? email) {
                              profile.email = email!;
                            },
                            onChanged: widget.onChanged,
                            cursorColor: Colors.white,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              icon: Icon(
                                widget.icon,
                                color: Colors.white,
                              ),
                              errorStyle: TextStyle(color: Colors.red[400]),
                              hintText: widget.hintText,
                              hintStyle:
                                  TextStyle(fontSize: 18, color: Colors.white),
                              border: InputBorder.none,
                            )),
                      ],
                    ),
                  ),
                ));
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
