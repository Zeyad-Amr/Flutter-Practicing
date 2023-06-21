import 'package:flutter/material.dart';
import 'package:logintest/components/rounded_button.dart';

import 'package:logintest/screens/welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this size provides us total height and width of our Screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Welcom to Our Hospital',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SvgPicture.asset(
            'assets/q.svg',
            height: size.height * 0.25,
          ),
          SizedBox(height: 20),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          )
        ],
      ),
    );
  }
}
