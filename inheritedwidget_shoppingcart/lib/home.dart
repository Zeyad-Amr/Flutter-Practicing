import 'dart:math';
import 'package:flutter/material.dart';
import 'package:inheritedwidget_shoppingcart/cartdetails.dart';
import 'package:inheritedwidget_shoppingcart/product.dart';
import 'package:inheritedwidget_shoppingcart/shoppingcart.dart';

class Home extends StatelessWidget {
  List<Product> items = List.generate(
    100,
    (i) {
      return Product.p(
          name: 'Product ${i + 1}',
          price: Random().nextInt(5000),
          isChecked: false);
    },
  );

  @override
  Widget build(BuildContext context) {
    ShoppingCart cart = ShoppingCart.of(context);
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Shopping Cart'),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20, top: 12),
                child: IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CartDetails(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              return Card(
                margin: EdgeInsets.all(5),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(child: Text(items[i].name)),
                        Checkbox(
                          value: items[i].isChecked,
                          onChanged: (value) {
                            setState(() {
                              items[i].isChecked = !items[i].isChecked;
                              if (items[i].isChecked) {
                                cart.products.add(items[i]);
                              } else {
                                cart.products.remove(items[i]);
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    subtitle: Text('${items[i].price} EGP'),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
