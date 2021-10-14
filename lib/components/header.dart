import 'package:flutter/material.dart';
import 'package:sepasang/Screens/Home/components/icon_btn_wth_counter.dart';
import 'package:sepasang/Screens/Home/components/search_field.dart';


class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 13,
        horizontal: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Search_Field(),
          IconBtnWithCounter(
            iconHeader: "assets/icons/shopping-cart.svg",
            numOfItems: 3,
            press: (){},
          ),
          IconBtnWithCounter(
            iconHeader: "assets/icons/notification.svg",
            numOfItems: 0,
            press: (){},
          ),
          IconBtnWithCounter(
            iconHeader: "assets/icons/menu.svg",
            numOfItems: 0,
            press: (){},
          ),
        ],
      ),
    );
  }
}
