import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleFirst = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '책플릭스 추천 도서',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    Widget titleSecond = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '책플릭스 인기 도서',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
    Widget titleThird = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '20대 남성 추천 도서',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    Widget slideFirst = Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset(
            'images/book1.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/book2.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/book3.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/book4.jpeg',
            width: 160,
          ),
        ],
      ),
    );

    Widget slideSecond = Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset(
            'images/image5.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/image6.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/image7.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/image8.jpeg',
            width: 160,
          ),
        ],
      ),
    );

    Widget slideThird = Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.asset(
            'images/image5.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/image6.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/image7.jpeg',
            width: 160,
          ),
          Image.asset(
            'images/image8.jpeg',
            width: 160,
          ),
        ],
      ),
    );

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple[200],
      ),
      title: 'recommend workout',
      home: Scaffold(
        appBar: AppBar(
          title: Text('책플릭스'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              FirstRoute(),
              titleFirst,
              slideFirst,
              titleSecond,
              slideSecond,
              titleThird,
              slideThird,
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            color: Colors.purple[200],
            height: 50.0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search),
                  Icon(Icons.account_box),
                ]),
          ),
        ),
      ),
    );
  }
}
