//import 'dart:async';

import 'dart:io';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter/material.dart';

import 'package:speech_recognition/speech_recognition.dart';
 

final textControl =TextEditingController();

class SpeechToText extends StatefulWidget{
  
  
    _SpeechToText createState()=>_SpeechToText();

}

class _SpeechToText extends State{
  SpeechRecognition speech= SpeechRecognition();
  bool _isAvailable=false;
  bool _isListening=false;
  String _currentLocale="en_US";
  String resultText="";


@override

void initState() {
    super.initState();
  activateSpeechRecognizer();
  }
  void activateSpeechRecognizer(){
    speech=new SpeechRecognition();
    speech.setAvailabilityHandler(
      (bool result)=>setState(()=>
        _isAvailable=result)
      
    );
    speech.setCurrentLocaleHandler((String locale)=>setState(()=>_currentLocale = locale));
    speech.setRecognitionStartedHandler(()=>setState(()=>_isListening=true),);
    speech.setRecognitionResultHandler((String speech)=>resultText=speech);
    speech.setRecognitionCompleteHandler(()=>setState(()=>_isListening=false));
    //speech.setErrorHandler(errorHandler);
    speech.activate().then((result)=>setState(()=> _isAvailable=result));
    
    
  }

  @override
  Widget build(BuildContext context) {
  //  TODO: implement build
  speak(){}
  stop(){}


    return  Card(
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
                child: Text(resultText),
//               child:  TextField(resultText,
//                 //resizeToAvoidBottomPadding: false,
//                 controller: textControl,
//                 keyboardType: TextInputType.multiline,
//                 maxLines: null,
//                 decoration: InputDecoration(
//                   border: InputBorder.none,
    
//                   hintText: 'Waiting to hear  you speak'

//   ),
// ),

              ),
              ),

              //to hold play and stop buttons
              new Row(children: <Widget>[
                new Expanded(
                child: Padding(
                  padding:EdgeInsets.all(2.0),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
        onPressed: () {if(_isAvailable && _isListening){
           speech.listen()
                  .then((result)=>print("$result"));
        }
        },
        tooltip: 'Say Something...',
        child: Icon(Icons.mic,),
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
        child: Icon(Icons.save),

                ),
                )
                ),

              ],),
              
              
            ],
          ),
          )
          
       
        );
         

  

  }
 
}