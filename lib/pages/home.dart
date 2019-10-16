import 'package:flutter/material.dart';

import '../ProductManager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: Text("Manager"),
              ),
              ListTile(
                title: Text("Product Admin"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: ProductManager({'item': 'Mast', 'image': './assets/food1.jpg'}),
      ),
    );
  }
}
