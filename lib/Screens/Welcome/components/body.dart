import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sepasang/Screens/Login/login_screen.dart';
import 'package:sepasang/Screens/Signup/signup_screen.dart';
import 'package:sepasang/components/rounded_button.dart';
import 'package:sepasang/constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    //Ukuran tampilan lebar n tinggi keseluruhan
    return Stack(
      children: [
        Background(
          child: SizedBox.shrink(),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  "WELCOME TO SEPASANG",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: SvgPicture.asset(
                  "assets/icons/welcome.svg",
                  width: size.width * 0.7,
                ),
              ),
              RoundedButton(
                text: "SIGN IN",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                text: "SIGNUP",
                color: PrimaryLightColor,
                textColor: Colors.black,
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
            ],
          ),
        ),
      ],
    );
  }
}
