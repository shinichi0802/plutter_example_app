import 'package:flutter/material.dart';

void main() => runApp(new My1App());

class My1App extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return new MaterialApp(
      title: "",
      home: new MainPage(title: "GridView of images")
    );
  }
}

class MainPage extends StatefulWidget{
  final String title;
  MainPage({this.title}): super();

  @override
  State<StatefulWidget> createState(){
    return new MainPageState();
  }
}

class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: new GridView.extent(
          maxCrossAxisExtent: 120.0,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          padding: const EdgeInsets.all(5.0),
          children: _buildGridTiles(23),
        )
    );
  }

  List<Widget> _buildGridTiles(numberOfTiles){
    List<Stack> container = new List<Stack>.generate(numberOfTiles,
        (int index){
          final imageName = 'images/${index + 1}.jpg';
          /*return new Container(
            child: new Image.asset(
                imageName,
                fit: BoxFit.fill,
            ),
          );*/
          return new Stack(
            alignment: const Alignment(-1.0, -1.0),
            children: <Widget>[
              new Container(
                child: new Image.asset(
                  imageName,
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.fill,
                ),
              ),
              new Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: new BoxDecoration(
                      color: new Color.fromARGB(150, 71, 150, 250)
                  ),
                  child: new Text('${index}', style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  )
              ),
            ],
          );
        }
    );
    return container;
  }
}