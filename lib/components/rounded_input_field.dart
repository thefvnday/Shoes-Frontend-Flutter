import 'package:flutter/material.dart';
import 'package:sepasang/components/text_field_container.dart.dart';
import '../constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hinText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hinText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon, color: PrimaryColor),
          hintText: hinText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}

