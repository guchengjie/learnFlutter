import 'package:flutter/material.dart';

class PosiLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('定位布局'),
      ),
      body: Container(
        // height: 120.0,
        // width: 120.0,
        color: Colors.blue[50],
        child: Column(
          children: <Widget>[
            Align(
              widthFactor: 2.0,
              heightFactor: 2.0,
              alignment: Alignment.bottomRight, // 矩形的中心点作为坐标原点
              child: FlutterLogo(
                size: 60,
              ),
            ),
            Align(
              widthFactor: 2.0,
              heightFactor: 2.0,
              alignment: FractionalOffset(0.2, 0.8), // 矩形的左上角作为坐标原点
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ],
        ),
      )
    );
  }
}