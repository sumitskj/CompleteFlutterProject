import 'package:flutter/material.dart';

import './home.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Auth Page'),
        ),
        body: Center(
          child: Container(
            child: RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePage(),
                  ),
                );
              },
              child: Text('Login'),
              color: Theme.of(context).accentColor,
            ),
          ),
        ),
      ),
    );
  }
}
