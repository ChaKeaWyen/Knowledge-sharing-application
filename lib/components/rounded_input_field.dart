import 'package:almost/components/textfieldcontainer2.dart';
import 'package:almost/model/profile.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  Profile profile = Profile(email: '', password: '');
  RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer2(
        onChanged: onChanged,
        hintText: hintText,
        child: TextFormField(
            validator: MultiValidator([
              RequiredValidator(errorText: "Please enter your Email"),
              EmailValidator(errorText: "Invalid Email format")
            ]),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String? email) {
              profile.email = email!;
            },
            onChanged: onChanged,
            cursorColor: Colors.white,
            style: GoogleFonts.caveat(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              errorStyle: GoogleFonts.exo(color: Colors.red[400]),
              hintText: hintText,
              hintStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
              border: InputBorder.none,
            )));
  }
}
