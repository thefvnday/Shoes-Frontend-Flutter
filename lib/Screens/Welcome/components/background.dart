import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
  required this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
      return Container(
      padding: EdgeInsets.only(top:0.0),
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          // Positioned(
          //   top: 0.5,
          //   left: 1,
          //   child: SvgPicture.asset(
          //         "assets/icons/blob-welcome.svg",
          //         width: size.width * 0.7,
          //       ),
          // ),
          Positioned(
            bottom: 0,
            left: 0,
             child: SvgPicture.asset(
                  "assets/icons/wave-welcome.svg",
                  width: size.width * 1.7,
                ),
          ),
          child,
        ],
      ),
    );
  }
}