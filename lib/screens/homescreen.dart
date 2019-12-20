import 'package:flutter/material.dart';
import 'package:mercyagutts/screens/texttospeech.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreen createState()=>_HomeScreen();

}

class _HomeScreen extends State<HomeScreen>{
   
  @override
  Widget build(BuildContext context){

    return    Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Text( 'TTS For The Visual Impaired',
             style: TextStyle(fontSize: 28,fontStyle: FontStyle.italic),
             ),
            ],),
  
           Row(mainAxisAlignment: MainAxisAlignment.center,
           
             children: <Widget>[
               
             
               
            
           ],
           ),
           
          ],
        ),
      );
  }
}
