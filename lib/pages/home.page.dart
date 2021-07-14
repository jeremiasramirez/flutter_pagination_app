import 'package:flutter/material.dart';
import 'package:flutter_pagination/widgets/body.widget.dart';
import 'package:flutter_pagination/widgets/data.service.dart';

class Home extends StatefulWidget {
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  DataService dataService = new DataService();

  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            leading: Container(
                margin: EdgeInsets.only(top: 38, left: 10),
                child: dataService.build(context)),
            title: Text("Pagination"),
            backgroundColor: Colors.blue[900],
            toolbarHeight: 100),
        body: BodyWidget(),
      ),
    );
  }
}
