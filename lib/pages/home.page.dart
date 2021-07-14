import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  Widget build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text("1/8"),
              backgroundColor: Colors.blue[900],
              toolbarHeight: 100),
        ));
  }
}
