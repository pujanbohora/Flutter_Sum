import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Example'),
      ),
      body: Center(
        child: RichText(
          text: const TextSpan(
            text: "Don't have an",
            style: TextStyle(
                color: Colors.deepPurpleAccent, wordSpacing: 40, fontSize: 20),
            children: [
              TextSpan(
                text: 'Account',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 40,
                  letterSpacing: 20,
                ),
              ),
              WidgetSpan(
                child: Icon(Icons.equalizer, size: 40, color: Colors.green),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                  text: 'sign up?',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.red,
                    fontSize: 30,
                    // fontFamily: ,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
