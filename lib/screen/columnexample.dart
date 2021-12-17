// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisSize: MainAxisSize.max,
          // verticalDirection: VerticalDirection.up,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.tealAccent,
              width: 200, //Mobile Full-screen size => double.infinity
              height: 100,
              child: const Text('Container 1'),
            ),
            Container(
              color: Colors.yellow,
              width: 200,
              height: 100,
              child: Text('Container 2'),
            ),
            Container(
              color: Colors.red,
              width: 200,
              height: 100,
              child: Text('Container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
