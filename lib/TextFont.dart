/*
Nguyen Duc Hoang (Mr)
Programming tutorial channel:
https://www.youtube.com/c/nguyenduchoang
Flutter, React, React Native, IOS development, Swift, Python, Angular
* */
import 'package:flutter/material.dart';

//Define "root widget"
void main() => runApp(new MyApp());//one-line function

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //build function returns a "Widget"
    return new MaterialApp(
        title: "",
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Add Custom fonts"),
          ),
          body: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text("This is Pacifico font",
                style: new TextStyle(
                    fontFamily: 'Pacifico'
                    ,fontSize: 32.0
                ),),
            ],
          ),
        )
    );
  }
}