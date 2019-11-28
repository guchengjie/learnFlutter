import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = new Container( // 生成一个容器
      padding: const EdgeInsets.all(32.0),
      color: Colors.white,
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                    )
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                  )
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
            size: 40.0,
          ),
          new Text(
            '41',
            style: new TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
    Column buildButtonColumn (IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 20.0,
                color: color,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.none,
              )
            ),
          )
        ],
      );
    }

    Widget buttonSection = Container( // 可加new 也可以不加
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(
      color: Colors.white,
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.black87,
          decoration: TextDecoration.none,
        ),
        softWrap: true,
        textAlign: TextAlign.left,
      ),
    );

    return new MaterialApp(
      title: '学习布局',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new ListView(
        children: [
          new Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    );
  }
}