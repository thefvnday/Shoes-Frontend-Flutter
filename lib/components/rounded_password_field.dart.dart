import 'package:flutter/material.dart';
import 'package:sepasang/components/text_field_container.dart.dart';

import '../constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final isfisible;
  final VoidCallback onshowpassword;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    this.isfisible, 
    required this.onshowpassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
          obscureText: isfisible,
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: "Password",
              icon: Icon(Icons.lock, color: PrimaryColor),
              suffixIcon:  GestureDetector(onTap: onshowpassword, child: Icon(Icons.visibility, color: PrimaryColor)),
              border: InputBorder.none)),
    );
  }
}
