import 'package:flutter/material.dart';

class TextFld extends StatefulWidget {
  const TextFld({Key? key}) : super(key: key);

  @override
  _TextFldState createState() => _TextFldState();
}

class _TextFldState extends State<TextFld> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              textCapitalization: TextCapitalization.characters,
              onSubmitted: (String value){
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "your best friend name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(height: 30),
            Text(
              'your best friend is $name',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
