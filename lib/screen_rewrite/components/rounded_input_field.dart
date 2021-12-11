import 'package:flutter/material.dart';

import 'textfield_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
            onChanged: onChanged,
            cursorColor: Colors.white,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              icon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 18, color: Colors.white),
              border: InputBorder.none,
            )));
  }
}
