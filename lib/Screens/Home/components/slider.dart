import 'package:flutter/material.dart';


class Slider extends StatelessWidget {
  final String SliderImg;
  
  const Slider({
    Key? key,required this.SliderImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(SliderImg),
          fit: BoxFit.cover,
       ),
      ),
    );
  }
}
