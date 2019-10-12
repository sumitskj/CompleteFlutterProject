import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  List<String> products = [];
  Products(this.products);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8.0),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            Card(
              child: Image.asset('./assets/food1.jpg'),
            ),
            Text(products[index])
          ],
        );
      },
    );
  }
}
