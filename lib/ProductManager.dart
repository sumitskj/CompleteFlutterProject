import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  Map<String, String> it;
  ProductManager(Map<String, String> it) {
    this.it = it;
    print(it);
    print('it');
  }

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

List<Map<String, String>> _products = [
  {'item': 'Mast khana', 'image': './assets/food2.jpg'}
];

void addProduct(Map product) {
  _products.add(product);
}

class _ProductManagerState extends State<ProductManager> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              setState(() {
                addProduct(widget.it);
                print(_products);
              });
            },
            child: Text("Add Product"),
          ),
        ),
        Flexible(
          child: Products(_products),
        ),
      ],
    );
  }
}
