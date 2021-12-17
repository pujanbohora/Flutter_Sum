import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(                //body and appbar
    
   // drawer: Drawer(),
     appBar: AppBar(
       title: Text('Container Example'),
       leading: Icon(Icons.menu),
     ),
     body: SafeArea(
       child: Container(
         decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 5),
         borderRadius: BorderRadius.circular(30),
         ),
         margin: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
         padding: EdgeInsets.symmetric(horizontal: 50),
         child: Container(
           width: 300, 
           height: 100,
           color: Colors.yellow,
           child: Text('hello',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
           ),
         ),
        
       ),
     ),
    );
  }
}