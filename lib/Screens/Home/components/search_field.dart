import 'package:flutter/material.dart';
import 'package:sepasang/constants.dart';


class Search_Field extends StatelessWidget {
  const Search_Field({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 45,
      decoration: BoxDecoration(
        color: SecondaryColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Product",
            prefixIcon: Icon(Icons.search, color: Colors.black),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 17,
              vertical: 13,
            )),
      ),
    );
  }
}
