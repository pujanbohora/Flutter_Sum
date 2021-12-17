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
         width: 500,
         height: 300,
         color: Colors.blue,
         child: Container(
           margin: EdgeInsets.only(left: 200, top: 160, bottom: 60, right: 20),
           color: Colors.green,
         child: Text("hello"),
         ),
         ),
     ),
    );
  }
}