import 'dart:async';
import 'dart:io';
import 'package:flutter_tts/flutter_tts.dart';
//import 'package:mercyagutts/screens/bottomNavBar.dart';

import 'package:flutter/material.dart';

class TextToSpeech extends StatefulWidget{

  _TextToSpeech createState()=>_TextToSpeech(); 

}


class _TextToSpeech extends State{

  final FlutterTts ttsVariable= FlutterTts();  
  final textControl=TextEditingController();

  @override
  Widget build(BuildContext context) {

    //to handle the speak feature
    Future speak() async{
        await ttsVariable.setLanguage("es_US");
        await ttsVariable.speak(textControl.text);
        await ttsVariable.setVolume(1.0);
         await ttsVariable.setPitch(1.0);
        print(textControl.text);

  }
// to handle the stop feature
  Future stop() async{
    await ttsVariable.stop();
  }
  save(){}
   

    return 
     
        //child:
         Card(
          elevation: 12.0,
          child: 
          Padding(
            padding: EdgeInsets.only(
             top: 36.0, left: 6.0, right: 6.0, bottom: 3.0,
             ),
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Expanded(child: Padding(
                        padding: EdgeInsets.all(2.0),
                      child:  TextField(
                        //resizeToAvoidBottomPadding: false,
                        controller: textControl,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
            
                          hintText: 'Enter a read term'

  ),
),

              ),
              ),

              //to hold play and stop buttons
              new Row(children: <Widget>[
                new Expanded(
                child: Padding(
                  padding:EdgeInsets.all(2.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
        onPressed: () => speak(),
        tooltip: 'Read Loud',
        child: Icon(Icons.play_arrow,),
      ),
                 )
              ),
              new Expanded(
                child: Padding(
                  padding:EdgeInsets.all(2.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
        onPressed: () => save(),
        tooltip: 'Save',
        child: Icon(Icons.save,),
      ),
                 )
              ),
              
              new Expanded(
                child: Padding(
                  padding:EdgeInsets.all(2.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
        onPressed: () => stop(),
        tooltip: 'Read Loud',
        child: Icon(Icons.stop),

                ),)
                ),

              ],),
              
              
            ],
          ),
          )
          
       //padding: EdgeInsets.all(10.0),
        );
         
      
    
    
    
    
      
      
  }

}