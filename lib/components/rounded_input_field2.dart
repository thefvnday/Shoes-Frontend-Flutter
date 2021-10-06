import 'package:flutter/material.dart';
import 'package:sepasang/components/text_field_container.dart.dart';

import '../constants.dart';


class RoundedInputField2 extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField2({
    Key? key,
    required this.hintText,
    this.icon = Icons.message,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged : onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: PrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
