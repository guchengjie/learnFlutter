import 'package:flutter/material.dart';

class ConstraineBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget redBox = DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints( // 分别设置
          minHeight: 50.0, //最小高度为50像素
          minWidth: double.infinity,
        ),
        // BoxConstraints.loose(Size(300.0, 400.0)), // 设置最大范围
        // BoxConstraints.tight(Size(200.0, 300.0)), // 设置到指定范围
        // BoxConstraints.expand(width: 100.0, height: 200.0), // 范围设置
        // BoxConstraints( // 分别设置
        //   minHeight: 50.0, //最小高度为50像素
        //   minWidth: double.infinity,
        // ),
        child: Container(
          height: 80.0,
          width: 200.0,
          child: redBox
        ),
      ),
    );
  }
}
