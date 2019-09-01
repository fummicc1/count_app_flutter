import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "カウントアプリ",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("カウントアプリ"),
        ),
        body: new Center(
          child: new CountPage(),
        ),
        ),
    );
  }
}

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("$count"),
        Spacer(),
        FlatButton(child: Text("+"), onPressed: () {
          setState(() {
            count += 1;
          });
        },),
      Spacer(),
      ],
    );
  }
}