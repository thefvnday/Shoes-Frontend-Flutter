import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 13,
              horizontal: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.40,
                  height: 40,
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
                          horizontal: 16,
                          vertical: 13,
                        )),
                  ),
                ),
                IconBtnWithCounter(
                  iconHeader: "assets/icons/notification.svg",
                  numOfItems: 3,
                  press: (){},
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

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
            height: 43,
            width: 43,
            decoration: BoxDecoration(
              color: SecondaryColor.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(iconHeader),
            // child: PopupMenuButton(
            //   itemBuilder:(context)=> [
            //     PopupMenuItem(child: Row(
            //       children: [
            //         Icon(
            //           Icons.offline_bolt,
            //           color: Colors.black,
            //         ),
            //         Padding(
            //           padding: EdgeInsets.only(left: 10),
            //           child: Text(""),
            //         )
            //       ],
            //     ))
            //   ],
            //   child: Icon(
            //     Icons.menu,
            //   ),
            // ),
          ),
          Positioned(
            right: 0,
            top: -1,
            child: Container(
              height: 17,
              width: 17,
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
