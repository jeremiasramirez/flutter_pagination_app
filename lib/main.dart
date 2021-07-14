import 'package:flutter/material.dart';
import 'package:flutter_pagination/pages/home.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Pagination',
      home: Home(),
    );
  }
}
