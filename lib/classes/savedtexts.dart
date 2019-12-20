class Saved{
  int _id;
  String _date;
  String _text;

  Saved( this._id,this._date,this._text);
  int get id=>id;
  String get text=>_text;
  String get date=>_date;


  set text(String newtext){
    if (newtext.length<=4028){
      _text=newtext;

    }

  } 
  set date(String newdate){
  _date = newdate;
}
Map <String ,dynamic> toMap(){
  var textMap=Map<String,dynamic>();
 textMap["text"]=_text;
 textMap["date"]=_date;
 if(_id!=null){
   textMap["id"]=_id;
 }
 return textMap;

  
   

}

 Saved.fromObject(dynamic o){
   
 }
}