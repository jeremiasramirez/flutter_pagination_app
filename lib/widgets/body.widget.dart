import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'data.service.dart';

class BodyWidget extends StatefulWidget {
  Body createState() => new Body();
}

class Body extends State<BodyWidget> {
  List<String> images = [
    'https://image.flaticon.com/icons/png/128/3884/3884363.png',
    'https://image.flaticon.com/icons/png/128/3884/3884366.png',
    'https://image.flaticon.com/icons/png/128/3884/3884497.png',
    'https://image.flaticon.com/icons/png/128/3884/3884379.png',
    'https://image.flaticon.com/icons/png/128/3884/3884439.png',
    'https://image.flaticon.com/icons/png/128/3884/3884453.png'
  ];

  DataService dataService = new DataService();

  Column build(context) {
    return Column(
      children: [
        containerImage(),
        SizedBox(height: 20),
        FadeIn(child: containerButtons())
      ],
    );
  }

  Row containerButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                dataService.decrementCount();
              });
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.deepPurple[800])),
        TextButton(
            onPressed: () {
              setState(() {
                dataService.incrementCount();
              });
            },
            child: Icon(Icons.arrow_forward_ios, color: Colors.deepPurple[800]))
      ],
    );
  }

  FadeIn containerImage() {
    return FadeIn(
        child: Container(
            color: Colors.grey[100],
            width: double.infinity,
            height: 300,
            child: FadeInImage(
              height: 300,
              placeholder: AssetImage("assets/images/loading.gif"),
              image: NetworkImage(this.images[this.dataService.initialCount]),
            )));
  }
}
