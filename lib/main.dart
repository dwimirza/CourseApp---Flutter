import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), 
    );
  }
}