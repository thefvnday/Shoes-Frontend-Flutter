import 'package:flutter/material.dart';
import 'package:sepasang/Screens/Login/login_screen.dart';
import 'package:sepasang/Screens/Signup/components/background.dart';
import 'package:sepasang/components/already_have_an_account.dart';
import 'package:sepasang/components/rounded_button.dart';
import 'package:sepasang/components/rounded_input_field.dart';
import 'package:sepasang/components/rounded_input_field2.dart';
import 'package:sepasang/components/rounded_password_field.dart.dart';
import 'package:sepasang/constants.dart';

class Body extends StatefulWidget {
  final Widget child;

  const Body({Key? key, required this.child}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isfisible = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGN UP",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.purple),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/signup-page.png",
                width: size.width * 0.6,
              ),
            ),
            RoundedInputField(
              hinText: "Username",
              onChanged: (value) {},
            ),
            RoundedInputField2(
              hintText: "Your Email",
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
              text: "SIGNUP",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            // OrDevider(),
          ],
        ),
      ),
    );
  }
}

// class OrDevider extends StatelessWidget {
//   const OrDevider({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       width: size.width * 0.8,
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Devider(
//               color: Color(0xFFD9D9D9D9),
//               heigth: 1.5,
//             ),
//           ),
//           Text(
//             "OR",
//             style: TextStyle(
//               color: PrimaryLightColor,
//               fontWeight: FontWeight.w600,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
