import 'package:flutter/material.dart';

class DataServiceState extends StatefulWidget {
  DataService createState() => new DataService();
}

class DataService extends State<DataServiceState> {
  int initialCount = 0;
  int maxCount = 5;
  int minCount = 1;
  int valueSlide = 0;

  void incrementCount() {
    if (this.initialCount < this.maxCount) {
      this.initialCount += 1;
    } else if (this.initialCount == this.maxCount) {
      this.initialCount = 0;
    }
    print(this.initialCount);
  }

  void decrementCount() {
    if (this.initialCount > 0) {
      this.initialCount -= 1;
    } else {
      this.initialCount = this.maxCount;
    }
  }

// no used
  Widget build(context) {
    return Text(
      '${this.initialCount}/${this.maxCount}',
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
