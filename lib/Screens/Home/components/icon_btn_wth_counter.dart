import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sepasang/constants.dart';


class IconBtnWithCounter extends StatelessWidget {
  final String iconHeader;
  final Function()? press;
  final int numOfItems;
  const IconBtnWithCounter({
    Key? key,
   required this.iconHeader,
    this.press,
    this.numOfItems : 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(70),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(9),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: SecondaryColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
           child: SvgPicture.asset(iconHeader),
          ),
          if (numOfItems!= 0)
          Positioned(
            right: 0,
            top: -1,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white)),
              child: Center(
                child: Text(
                  "$numOfItems",
                  style: TextStyle(
                      fontSize: 9,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
