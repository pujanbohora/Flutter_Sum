import 'package:flutter/material.dart';

class Stacktask extends StatelessWidget {
  const Stacktask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            left: 70,
            top: 60,
            child: Container(
              width: 200,
              height: 600,
              color: Colors.red,
              child: Text('Red'),
            ),
          ),
          Positioned(
            left:140,
            bottom: 10,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
              child: Text('Green'),
            ),
          ),
        ],
      )),
    );
  }
}
