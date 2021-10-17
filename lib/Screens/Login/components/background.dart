import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: -0.7,
            left: 0,
            child: SvgPicture.asset(
              "assets/icons/blob-bottom-login.svg",
              width: size.width * 1.7,
            ),
          ),
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   right: 0.60,
          //   bottom: 0,
          //   child: Image.asset(
          //     "assets/images/login_bottom.png",
          //     width: size.width * 0.5,
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
