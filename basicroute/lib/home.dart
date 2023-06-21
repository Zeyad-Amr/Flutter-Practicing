import 'package:basicroute/product.dart';
import 'package:basicroute/second.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> products = List.generate(
      100,
      (index) =>
          Product(name: 'Product ${index + 1}', price: (index + 1) * 300),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(products[i].name),
          trailing: Text('Price ${products[i].price}'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Second(products[i]),
                ));
          },
        ),
      ),
    );
  }
}
