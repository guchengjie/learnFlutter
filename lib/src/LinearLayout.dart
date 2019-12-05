import 'package:flutter/material.dart';

class LinearLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('线性布局'),
      ),
      body: DefaultTextStyle(
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(" hello world "),
                  Text(" I am Jack "),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min, // 利用最小空间
                children: <Widget>[
                  Text(" hello world "),
                  Text(" I am Jack "),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                textDirection: TextDirection.rtl, // 设置对齐参考线
                children: <Widget>[
                  Text(" hello world "),
                  Text(" I am Jack "),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.up, // 设置对齐参考线
              children: <Widget>[
                Text(" hello world ", style: TextStyle(fontSize: 60.0),),
                Text(" I am Jack "),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("hi"),
                Text("world"),
              ],
            ),
          ],
        ),
      )
    );
  }
}