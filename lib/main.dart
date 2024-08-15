import 'package:flutter/material.dart';

void main(){

  var companyNameDecoration = BoxDecoration(border: Border.all(color: Colors.black,width: 5,),borderRadius: BorderRadius.circular(10.0));

  var companyNameWidget = Container(
    margin: EdgeInsets.symmetric(horizontal: 100),
    decoration: companyNameDecoration,
    height:60,
    alignment: Alignment.center,
      child:Text('ByteLogik',style: TextStyle(color: Colors.blue,fontSize: 30,fontWeight: FontWeight.bold)));

  var questionWidget = Text('How was the course experience ?',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),);

  var thumbIconSize = 60.0;

  var thumbsUp = Icon(Icons.thumb_up,size: thumbIconSize,color: Colors.green,);
  var thumbsDown = Icon(Icons.thumb_down,size: thumbIconSize,color: Colors.red,);

  var thumbsWidget = Row(children: [thumbsUp,Container(width: 40,),thumbsDown],
    mainAxisAlignment: MainAxisAlignment.center,
  );

  runApp(MaterialApp(
    home:Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        companyNameWidget,
        questionWidget,
        thumbsWidget
      ])
    )
  ));
}