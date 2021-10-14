import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sepasang/Screens/Home/components/icon_btn_wth_counter.dart';
import 'package:sepasang/Screens/Home/components/search_field.dart';
import 'package:sepasang/components/header.dart';
import 'package:sepasang/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Header(),
          SizedBox(height:10),
          CarouselSlider(
            options: CarouselOptions(
              height: 190.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              ),
            items:[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/slide0.jpg"),
                    fit: BoxFit.cover,
                 ),
                ),
              )
            ]  
          )
        ],
      )),
    );
  }
}
