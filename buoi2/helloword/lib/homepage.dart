import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text('Hello word'),
        ),
        body: Center(
          child: Text(
            'Xin chào flutter',
            style: TextStyle(fontSize: 24), )
        ),
      );
    }
  }