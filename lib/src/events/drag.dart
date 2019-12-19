import 'package:flutter/material.dart';

class DragEvent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DragEventState();
  }
}

class DragEventState extends State<DragEvent> with SingleTickerProviderStateMixin {
  double _left = 100.0;
  double _top = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('拖动(X轴方向)'),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: CircleAvatar(child: Text('A'),),
              // onPanDown: (DragDownDetails e) {
              //   //打印手指按下的位置(相对于屏幕)
              //   print("用户手指按下：${e.globalPosition}");
              // },
              onHorizontalDragUpdate: (DragUpdateDetails e) {
                //用户手指滑动时，更新偏移，重新构建
                setState(() {
                  _left += e.delta.dx;
                });
              },
              onVerticalDragUpdate: (DragUpdateDetails e) {
                setState(() {
                  _top += e.delta.dy;
                });
              },
              // onPanEnd: (DragEndDetails e) {
              //   //打印滑动结束时在x、y轴上的速度
              //   print("滑动速度：${e.velocity}");
              // },
            ),
          )
        ],
      )
    );
  }
}