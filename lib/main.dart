import 'package:flutter/material.dart';
import './pages/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: Color(0xFFb2ff59),
          accentColor: Colors.deepPurpleAccent),
      home: AuthPage(),
    );
  }
}
