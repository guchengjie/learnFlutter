import 'package:flutter/material.dart';

class TextWiTextdget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            '我爱学习' * 6,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.blue,
              fontFamily: "courier",
              height: 1.5,
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: 1.5,
          ),
        ),
      ),
    );
  }
}