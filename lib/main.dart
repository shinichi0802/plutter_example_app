//Layout tutorial
import 'package:flutter/material.dart';

void main() => runApp(new My1App());

class My1App extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: new Text("Programming Tutorial channel",
                      style: new TextStyle( fontWeight: FontWeight.bold),),
                  ),
                  new Text("This channel contains tutorial videos in Flutter, """
                          "React Native, React, Angular",
                    style: new TextStyle(color: Colors.grey[600]),)
                ],
          )),
          new Icon(Icons.favorite, color: Colors.red),
          new Text("100")
        ],
      ),
    );

    Widget buildButton(IconData icon, String title){
      final Color tintColor = Colors.blue;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: tintColor),
          new Container(
            child: new Text(title, style: new TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          )
        ],
      );
    }

    Widget bottomText = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Text('''Việc phát triển web front-end side ở một số hệ thống lớn lâu nay vẫn được làm theo kiểu monoliths (dù có thể backend đã được microservice hoá), ai cũng biết đây là bad practice. Kể cả khi bắt đầu chia code ra thành các component, xài require hoặc import để tái sử dụng (chia ra thành các UI component lib hoặc javascript framework của riêng bạn), tuy vậy cái kết vẫn là một cục web app 'monoliths' (một khối duy nhất). Đã đến lúc thay đổi điều này''',
        style: new TextStyle( color: Colors.grey[850], fontSize: 14.0),)
    );

    Widget fourButtonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildButton(Icons.home,"Home"),
          buildButton(Icons.arrow_back,"Back"),
          buildButton(Icons.arrow_forward,"Next"),
          buildButton(Icons.share,"Share"),
        ],
      ),
    );

    return new MaterialApp(
      title: "",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter App"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset('images/IMG_2690.jpg',fit: BoxFit.cover,),
            titleSection,
            fourButtonSection,
            bottomText
          ],
        ),
      ),
    );
  }
}