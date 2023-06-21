import 'package:flutter/material.dart';
import 'package:inheritedwidget_shoppingcart/shoppingcart.dart';

class CartDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ShoppingCart cartt = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Details'),
      ),
      body: Center(
        child: Text('${cartt.products.length} Selected',
            style: Theme.of(context).textTheme.display1),
      ),
    );
  }
}
