import 'package:flutter/material.dart';

class LinearLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('线性布局'),
      ),
      body: Container(
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
                  children: <Widget>[
                    Expanded( // 展开组件
                      child: Container(
                        color: Colors.red,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,//无效，内层Colum高度为实际高度  
                          children: <Widget>[
                            Text("hello world "),
                            Text("I am Jack "),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
      // DefaultTextStyle(
      //   style: TextStyle(
      //     color: Colors.blue,
      //     fontSize: 30.0
      //   ),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: <Widget>[
      //             Text(" hello world "),
      //             Text(" I am Jack "),
      //         ],
      //       ),
      //       Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           mainAxisSize: MainAxisSize.min, // 利用最小空间
      //           children: <Widget>[
      //             Text(" hello world "),
      //             Text(" I am Jack "),
      //         ],
      //       ),
      //       Row(
      //           mainAxisAlignment: MainAxisAlignment.end,
      //           textDirection: TextDirection.rtl, // 设置对齐参考线
      //           children: <Widget>[
      //             Text(" hello world "),
      //             Text(" I am Jack "),
      //         ],
      //       ),
      //       Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         verticalDirection: VerticalDirection.up, // 设置对齐参考线
      //         children: <Widget>[
      //           Text(" hello world ", style: TextStyle(fontSize: 60.0),),
      //           Text(" I am Jack "),
      //         ],
      //       ),
      //       Column(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: <Widget>[
      //           Text("hi"),
      //           Text("world"),
      //         ],
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}