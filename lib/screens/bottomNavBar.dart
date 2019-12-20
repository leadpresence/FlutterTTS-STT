import 'package:flutter/material.dart';
import 'package:mercyagutts/screens/texttospeech.dart';
import 'package:mercyagutts/screens/speechtotext.dart';
//import 'package: fancy_bottom_navigation';



class BottomNav extends StatefulWidget{
  
  _BottomNav createState() => _BottomNav();

}

class _BottomNav extends State<BottomNav>{
  
      int  selectedNav= 0;
      List <NavigationItem> items= 
      
      [
         NavigationItem(Icon(Icons.play_arrow,color: Colors.red,),Text('Play',style: TextStyle(color: Colors.red))),
         NavigationItem(Icon(Icons.stop, color: Colors.red,),Text('Stop',style: TextStyle(color: Colors.red))),
         NavigationItem(Icon(Icons.share,color: Colors.red,),Text('Share',style: TextStyle(color: Colors.red))),
         NavigationItem(Icon(Icons.mic,color: Colors.red,),Text('Record Sound',style: TextStyle(color: Colors.red))),
        //NavigationItem(Icon(Icons.menu,color: Colors.red,),Text('Options',style: TextStyle(color: Colors.red))),
      ];

  // maped Nav items
              Widget _buildItem(NavigationItem item , bool isSelected){
                  
                    return Row( 
                      children: <Widget>[
                          item.icon,  isSelected ? item.title: Container(
                            
                            
                          ) ,
                        
                    ],
                    );
            }   

  @override
  //builder for the bottomNav , this controls features of the nav and events 
  // for use actions
  Widget build(BuildContext context){
              return  Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                height: 65.0,
              // list of Icons called from the list "items" above
                child:  
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: items.map((item){
                          var itemIndex= items.indexOf(item);
                          return GestureDetector(
                            onTap:( ){
                              setState(() {
                                selectedNav=itemIndex;
                              });
                              
                            },
                          child: _buildItem(item, selectedNav==itemIndex )
                          );
                        }).toList()
                      
                      ),
                
                 );
  
  
    
  }
  }
  // list of navigation items
  class NavigationItem {

    final Icon icon;
    final Text title;

  NavigationItem(this.icon, this.title);

  }