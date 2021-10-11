import 'package:flutter/material.dart';
import 'package:sepasang/constants.dart';


class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final Function()? press;

  const SocialIcon({
    Key? key,
    required this.iconSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: PrimaryLightColor,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconSrc,
           width: size.width * 0.08,
        ),
      ),
    );
  }
}
