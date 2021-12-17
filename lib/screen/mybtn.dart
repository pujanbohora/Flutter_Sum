import 'dart:ffi';

import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Example')),
      body: Column(
        children: [
          TextButton(
              style: TextButton.styleFrom(
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  padding: EdgeInsets.all(10),
                  minimumSize: Size(100, 50),
                  backgroundColor: Colors.red,
                  primary: Colors.white,
                  onSurface: Colors.black,
                  elevation: 20,
                  shadowColor: Colors.blue,
                  side: BorderSide(color: Colors.blueGrey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23))),
              onPressed: null,
              child: Text('TextButton')),
          SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 50),
                  primary: Colors.green,
                  onSurface: Colors.black,
                  elevation: 20,
                  shadowColor: Colors.blue,
                  side: BorderSide(color: Colors.blueGrey),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23))),
              onPressed: () {},
              child: Text('Elevated Button')),
          SizedBox(height: 20),
          OutlinedButton(onPressed: () {}, child: Text('Outline Button'))
        ],
      ),
    );
  }
}
