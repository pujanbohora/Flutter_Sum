

import 'package:flutter/material.dart';
// import 'package:first_app/screen/columnExample.dart';
// import 'package:first_app/screen/profile.dart';
// import 'package:first_app/screen/Profile.dart';
// import 'package:first_app/screen/text.dart';
// import 'package:first_app/screen/stackdemo.dart';
// import 'package:first_app/screen/stackimage.dart';
// import 'package:first_app/screen/stacktask.dart';
// import 'package:first_app/screen/stackdemo.dart';
// import 'package:first_app/screen/txtfd.dart';
// import 'package:first_app/screen/stftextfield.dart';
// import 'screen/retrieve.dart';

import 'screen/buttontask1.dart';
// import 'screen/mybtn.dart';




void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonTask(),
      
    );
  }
}