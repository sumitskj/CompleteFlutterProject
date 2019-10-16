import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  List<Map> products = [];

  Products(this.products) {
    print(products);
    print('pro');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Column(children: <Widget>[
                Container(
                  child: Image.asset(products[index]['image']),
                ),
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(products[index]['item']),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ProductPage(),
                          ),
                        );
                      },
                      child: Text("SEE"),
                    )
                  ],
                )
              ]),
            );
          },
        ),
      ),
    );
  }
}
