import 'package:flutter/material.dart';

class TextWiTextdget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: DefaultTextStyle(
            //1.设置文本默认样式  
            style: TextStyle(
              color:Colors.red,
              fontSize: 30.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text("I am Jack",
                  style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    color: Colors.grey,
                    fontSize: 35.0
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}