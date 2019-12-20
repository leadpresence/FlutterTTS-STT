import 'package:flutter/material.dart';
import './screens/index.dart';


void main() => runApp(MusaTts());

  


  class MusaTts extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercy TTS',
      color: Colors.red,
      theme: ThemeData(
        
        primarySwatch: Colors.red,
      ),
      
      home: Scaffold(
        body:Index(),
      )
      
    );
  }
}





 