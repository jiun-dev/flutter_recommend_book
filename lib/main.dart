import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '20대 남성 추천 도서',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    Widget slideBook = Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.purple,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'recommend workout',
      home: Scaffold(
          appBar: AppBar(
            title: Text('오늘의 도서 추천'),
          ),
          body: Column(
            children: <Widget>[
              titleSection,
              slideBook,
            ],
          )),
    );
  }
}
