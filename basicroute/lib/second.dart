import 'package:basicroute/product.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  Product p;
  Second(this.p);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              '${p.name}',
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(
              height: 200,
            ),
            Text('Price ${p.price}'),
          ],
        ),
      ),
    );
  }
}
