import 'package:flutter/material.dart';
import 'package:helloword/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello word app',
      home: HomePage(),
    );
  }


}
