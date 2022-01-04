import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:almost/model/profile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'textfield_container.dart';

// ignore: must_be_immutable
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  Profile profile = Profile(email: '', password: '');
  RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
          validator: RequiredValidator(errorText: "Please enter your Password"),
          obscureText: true,
          onSaved: (String? password) {
            profile.password = password!;
          },
          onChanged: onChanged,
          cursorColor: Colors.white,
          style: GoogleFonts.exo(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: GoogleFonts.exo(
              fontSize: 18,
              color: Colors.white,
            ),
            icon: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            suffixIcon: Icon(Icons.visibility, color: Colors.white),
            border: InputBorder.none,
          )),
    );
  }
}
