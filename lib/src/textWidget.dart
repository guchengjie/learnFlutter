import 'package:flutter/material.dart';

class TextWiTextdget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'home:',
                  style: TextStyle(
                    fontSize: 30.0
                  ),
                ),
                TextSpan(
                  text: 'www.baidu.com',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30.0
                  ),
                )
              ]
            )
          ),
        ),
      ),
    );
  }
}