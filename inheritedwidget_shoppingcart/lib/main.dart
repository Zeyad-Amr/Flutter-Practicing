import 'package:flutter/material.dart';
import 'package:inheritedwidget_shoppingcart/home.dart';
import 'package:inheritedwidget_shoppingcart/shoppingcart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
