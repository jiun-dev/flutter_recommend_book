import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'recommend workout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('오늘의 도서 추천'),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Image.asset('images/book1.jpeg'),
              Image.asset('images/book2.jpeg'),
              Image.asset('images/book3.jpeg'),
              Image.asset('images/book4.jpeg'),
            ],
          ),
        ),
      ),
    );
  }
}
