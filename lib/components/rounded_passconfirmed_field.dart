import 'package:almost/components/textfield_container.dart';
import 'package:flutter/material.dart';

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
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            hintText: 'Confirmed Password',
            hintStyle: TextStyle(
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
