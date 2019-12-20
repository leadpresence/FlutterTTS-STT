
import 'dart:async';
import 'dart:io';
import 'package:flutter_tts/flutter_tts.dart';
//import 'package:mercyagutts/screens/bottomNavBar.dart';

import 'package:flutter/material.dart';
import 'package:mercyagutts/screens/texttospeech.dart';
import 'package:mercyagutts/screens/speechtotext.dart';
import 'package:mercyagutts/screens/homescreen.dart';

void main() => runApp(MusaTts());

  

class MusaTts extends StatefulWidget {

  final String title;
  MusaTts({Key key, this.title}) : super(key: key);
  // This widget is the root of your application.
  @override
   _MusaTts createState() => _MusaTts();
}



class _MusaTts extends State<MusaTts> {
  int pageIndex=0;
  Widget callPage(int currrentPage){
    switch (currrentPage) {
       case 0 : return HomeScreen();
      case 1 : return SpeechToText();
      case 2 : return TextToSpeech();
        break;
      default: return HomeScreen();
    }

  }
   @override
  Widget build(BuildContext context) {
    
return MaterialApp(
  //darkTheme:ThemeData(colorScheme:b) ,
  debugShowCheckedModeBanner: false,
  title: 'Mercy TTS',
  theme: ThemeData(
      primaryColor: Colors.red,
  ),
  home: Scaffold(
  appBar: AppBar(
    title: Text('Agu Mercy S. TTS'),

),
body:callPage(pageIndex),
bottomNavigationBar: BottomNavigationBar(
  currentIndex: pageIndex,
  onTap: (value){
    pageIndex=value;
    setState(() {
      
    });
  },
  items: [
    BottomNavigationBarItem(
    title: Text('Home'),
    icon: Icon(Icons.home)

  ),
    BottomNavigationBarItem(
    title: Text('Speak'),
    icon: Icon(Icons.mic)

  ),
  BottomNavigationBarItem(
    title: Text('Listen'),
    icon: Icon(Icons.speaker)

  ),
  ]
),
)


);
}

}

  



 