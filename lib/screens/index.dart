import 'package:flutter/material.dart';
import './home.dart';

class Index extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
   
    return  Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
             Text( 'TTS for Visual Impaired',
             style: TextStyle(fontSize: 25,fontStyle: FontStyle.italic),
             ),
            ],),
  
           Row(mainAxisAlignment: MainAxisAlignment.center,
           
             children: <Widget>[
               
             RaisedButton(
               color: Colors.limeAccent,
               child: Text('Start...'),
               elevation: 5.0,
               splashColor: Colors.red,
               onPressed: ()=>
                 //here we call the screen to add the expense name and amount
                 Navigator.push(
                 context, 
                 MaterialPageRoute(
                  builder: (
                    BuildContext context)=> MusaTts(),
                  ),
                 ),
                 ),
               
            
           ],
           ),
           
          ],
        ),
      );
     // This trailing comma makes auto-formatting nicer for build methods.
  
  }
}
