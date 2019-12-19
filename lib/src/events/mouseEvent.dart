import 'package:flutter/material.dart';

class MouseEvent extends StatefulWidget {
  @override
  MouseEventState createState() {
    return MouseEventState();
  }
}

class MouseEventState extends State<MouseEvent> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mouseEvent'),
      ),
      body: Listener(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 300.0,
          height: 150.0,
          child: Text(_event?.toString()??"",style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            )
          ),
        ),
        onPointerDown: (PointerDownEvent event) => setState(()=>_event=event),
        onPointerMove: (PointerMoveEvent event) => setState(()=>_event=event),
        onPointerUp: (PointerUpEvent event) => setState(()=>_event=event),
      ),
    );
  }
}