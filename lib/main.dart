import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Mission-1')),
            body: Center(child: UpdateText())));
  }
}

class UpdateText extends StatefulWidget {
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String Mytext = 'Butona bas yazı değişsin';

  changeText() {
    setState(() {
      Mytext = 'Bunun adı sihir dostuum';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(40, 40, 40, 40),
          child: Text('$Mytext', style: TextStyle(fontSize: 30))),
      RaisedButton(
        onPressed: () => changeText(),
        child: Text('Bas korkma basssssss'),
        textColor: Colors.white,
        color: Colors.red,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),
    ])));
  }
}
