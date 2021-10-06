import 'package:flutter/material.dart';
import 'package:sepasang/Screens/Login/components/background.dart';
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
  bool isfisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "LOGIN",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.purple),
          ),
        
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/login-page.png",
              width: size.width * 0.5,
            ),
          ),
         
          RoundedInputField(
            hinText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onshowpassword: (){
              setState(() {
                isfisible = !isfisible;
              });
            },
            isfisible: isfisible,
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: (){},
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
          )
        ],
      ),
    );
  }
}

