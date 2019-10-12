import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String item;
  ProductManager(this.item);

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

List<String> _products = ['Mast Khana'];

class _ProductManagerState extends State<ProductManager> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add(widget.item);
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
