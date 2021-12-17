import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  const StackExample({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        
        child: Stack(
          clipBehavior: Clip.antiAlias,
          alignment: Alignment.center,
          children : [
            Container(
              width: 300,
              height: 200,
              color:  Colors.teal,
              child: Center(child: Text("First Container 1", textScaleFactor: 1.5,)),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 100,
                height: 50,
                color:  Colors.red,
                child: Text("First Container 2ß", textScaleFactor: 1.5,),
              ),
            ),
            Container(
              width: 100,
              height: 90,
              color:  Colors.yellow,
              child: Text("Container", textScaleFactor: 1.5,),
            ),
          ]
        ),
      ),
      
    );
  }
}