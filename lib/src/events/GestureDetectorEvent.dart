import 'package:flutter/material.dart';

class GestureDetectorEvent extends StatefulWidget {
  @override
  GestureDetectorEventState createState() {
    return GestureDetectorEventState();
  }
}

class GestureDetectorEventState extends State<GestureDetectorEvent> {
  String _operation = '';

  void callBack(String text) {
    setState(() {
      _operation = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('pointEvent'),
    ),
    body: Center(
      child: GestureDetector(
        child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            width: 200.0, 
            height: 100.0,
            child: Text(_operation,
              style: TextStyle(color: Colors.white),
            ),
          ),
          onTap: () => callBack('tap'),
          onDoubleTap: () => callBack('doubleTap'),
          onLongPress: () => callBack('longPress'),
        ),
      )
    );
  }
}