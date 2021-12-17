import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              color: Colors.red,
              width: 100,
              child: Center(
                child: Text(
                  'Red',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Column(                             //wrap Column inside container
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.yellow,
                    child: Text('Yellow'),
                  ),
                  Container(
                    color: Colors.green,
                    child: Center(
                      child: Text('Green'),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Blue',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
