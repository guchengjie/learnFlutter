import 'package:flutter/material.dart';

class PaddingBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('填充容器'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.fromLTRB(32.0, 8.0, 10.0, 12.0),
                child: Text('fromLTRB'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Text('only'),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text('symmetric'),
              )
            )
          ],
        ),
      ),
    );
  }
}