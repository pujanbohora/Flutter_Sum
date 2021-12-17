import 'package:flutter/material.dart';

class TextFdlExample extends StatelessWidget {
  const TextFdlExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: TextField(
            textCapitalization: TextCapitalization.characters,
            // textInputAction: TextInputAction.emergencyCall,
            // keyboardType: TextInputType.emailAddress, works in stf
            // maxLength: 4,
            // maxLines: 2,
            // obscureText: true,
            // obscuringCharacter: '#',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
                icon: Icon(Icons.people),
                labelText: "Name",
                hintText: "Enter your name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ),
      ),
    );
  }
}
