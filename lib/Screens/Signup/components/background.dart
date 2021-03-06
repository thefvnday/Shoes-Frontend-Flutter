import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
   
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned(
          //   right: 0,
          //   bottom: 0,
          //   child: Image.asset(
          //     "assets/images/login_bottom.png",
          //     width: size.width * 0.5,
          //   ),
          // ),
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset(
              "assets/icons/wave-top-signup.svg",
              width: size.width * 1.5,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
