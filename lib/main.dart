import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new MyStatelessWidget()
      )
  );
}

class MyStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("My List App", textAlign: TextAlign.center,),
       
      ),
      body: new Container(
        padding: new EdgeInsets.only(top: 10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new MyCard(
              title: new Text("data 0", style: new TextStyle(
                  fontSize: 20.0
                ),
              ),
              icon: new Icon(Icons.check_box_outline_blank, size: 40.0, color: Colors.lightBlue)
            ),
            new MyCard(
               title: new Text("data 1", style: new TextStyle(
                    fontSize: 20.0,
                    
                  ),
                ),
              icon: new Icon(Icons.check_box_outline_blank, size: 40.0, color: Colors.lightBlue,)
            ),
            new MyCard(
               title: new Text("data 2", style: new TextStyle(
                    fontSize: 20.0
                  ),
                ),
              icon: new Icon(Icons.check_box_outline_blank, size: 40.0, color: Colors.lightBlue)
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.title, this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(bottom: 10.0),
      child: new Card(
        child: new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              this.title,
              this.icon
            ],
          ),
        )
        
      ),
    );
  }
}