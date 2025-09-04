import 'package:flutter/material.dart';
import 'package:quan_ly_cat_toc/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quản lý cắt tóc',
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
