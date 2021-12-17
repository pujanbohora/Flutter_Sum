import 'package:flutter/material.dart';

class StackImage extends StatelessWidget {
  const StackImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children:[
            Image.network('https://googleflutter.com/sample_image.jpg'),
            CircleAvatar(
              radius: 30,
              
              
            ),
          ],
        ),
      ),
      
    );
  }
}