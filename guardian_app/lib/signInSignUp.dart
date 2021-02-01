import 'package:flutter/material.dart';
import 'package:guardian_app/SignInScreen.dart';
import 'package:guardian_app/SignUpScreen.dart';
import 'package:guardian_app/home.dart';
import 'package:flutter/widgets.dart';
import 'package:guardian_app/animation/FadeAnimation.dart';
import 'package:flutter/gestures.dart';

class SignInSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(padding: const EdgeInsets.only(top: 60)),
        FadeAnimation(
            1,
            Image.asset(
              'assets/splash-sc-logo.png',
              width: 100.0,
              height: 100.0,
            )),
        Padding(padding: const EdgeInsets.only(top: 60)),
        FadeAnimation(
            1.2,
            Text(
              'GUARDIAN',
              style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.w100),
            )),
        Padding(padding: const EdgeInsets.only(top: 70)),
        FadeAnimation(
          1.3,
          Text("Always with you.\nAlways protecting you",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.normal
              )),
        ),
        Padding(padding: const EdgeInsets.only(top: 150)),
        Column(
          children: <Widget>[
            FadeAnimation(
                1.4,
                MaterialButton(
                  elevation: 0,
                  color: Colors.amber,
                  minWidth: 320,
                  height: 60,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                )),
            Padding(padding: const EdgeInsets.only(bottom: 10)),
            FadeAnimation(
                1.5,
                RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            })
                    ]))),
          ],
        ),
      ],
    )));
  }
}
