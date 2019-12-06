import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('堆叠布局'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(), // 通过ConstrainedBox来确保Stack占满屏幕
        child: Stack(
          alignment:Alignment.center , //指定未定位或部分定位widget的对齐方式
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            Container(child: Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            Positioned(
              top: 18.0,
              child: Text("Your friend"),
            ),
            Positioned(
              right: 18.0,
              bottom: 18.0,
              child: Text('go to top'),
            )
          ],
        ),
      ),
    );
  }
}