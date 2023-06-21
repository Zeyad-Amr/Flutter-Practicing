import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -100,
            left: -100,
            child: Image.asset(
              'assets/02.png',
              width: size.width * 0.55,
            ),
          ),
          Positioned(
            bottom: -70,
            left: -70,
            child: Image.asset(
              'assets/01.png',
              width: size.width * 0.6,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
