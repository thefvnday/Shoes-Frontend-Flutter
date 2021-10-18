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
              height: 165.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16/9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
              ),
            items:[
              Slider(
                sliderImg: 'assets/images/slide0.jpg',
              ),
              Slider(
                sliderImg: 'assets/images/slide1.jpg',
              ),
              Slider(
                sliderImg: 'assets/images/slide2.jpg',
              )
            ]  
          )
        ],
      )),
    );
  }
}



//Belum bisa di extrac wedget nya

class Slider extends StatelessWidget {
  final String sliderImg;
  
  const Slider({
    Key? key,required this.sliderImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(sliderImg),
          fit: BoxFit.cover,
       ),
      ),
    );
  }
}
