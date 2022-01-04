import 'package:almost/components/textfield_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundedPasswordConfirmedField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordConfirmedField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          obscureText: true,
          onChanged: onChanged,
          cursorColor: Colors.white,
          style: GoogleFonts.exo(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: 'Confirmed Password',
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
