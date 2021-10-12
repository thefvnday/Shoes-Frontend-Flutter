import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sepasang/Screens/Home/components/icon_btn_with_counter.dart';
import 'package:sepasang/Screens/Home/components/search_field.dart';
import 'package:sepasang/components/header.dart';
import 'package:sepasang/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Header()
        ],
      )),
    );
  }
}
