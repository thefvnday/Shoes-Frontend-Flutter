import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sepasang/Screens/Home/home_screen.dart';
import 'package:sepasang/Screens/Login/components/background.dart';
import 'package:sepasang/Screens/Signup/components/social_icon.dart';
import 'package:sepasang/Screens/Signup/signup_screen.dart';
import 'package:sepasang/components/already_have_an_account.dart';
import 'package:sepasang/components/rounded_button.dart';
import 'package:sepasang/components/rounded_input_field.dart';
import 'package:sepasang/components/rounded_password_field.dart.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isfisible = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN IN",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(
              "assets/icons/wave-login-page.svg",
              width: size.width * 0.5,
            ),
          ),
          RoundedInputField(
            hinText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onshowpassword: () {
              setState(() {
                isfisible = !isfisible;
              });
            },
            isfisible: isfisible,
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGN IN",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomeScreen();
                  },
                ),
              );
            },
          ),
          
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignupScreen();
                  },
                ),
              );
            },
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                SocialIcon(
                  iconSrc: "assets/images/facebook.png",
                  press: (){},
                ),
                
                SocialIcon(
                  iconSrc: "assets/images/google.png",
                  press: (){},
                ),
               
                SocialIcon(
                  iconSrc: "assets/images/twitter.png",
                  press: (){},
                ),

              ],
            )
        ],
      ),
    );
  }
}
