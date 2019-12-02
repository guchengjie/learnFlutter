import 'package:flutter/material.dart';

class FormWiTextdget extends StatelessWidget {

  void handle() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new RaisedButton(
                  child: Text('raise button'),
                  onPressed: handle,
                ),
                new FlatButton(
                  child: Text('flat button'),
                  onPressed: handle,
                ),
                new OutlineButton(
                  child: Text('outline button'),
                  onPressed: handle,
                ),
                new IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: handle,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                new RaisedButton.icon(
                  icon: Icon(Icons.send),
                  label: Text("发送"),
                  onPressed: handle,
                ),
                OutlineButton.icon(
                  icon: Icon(Icons.add),
                  label: Text("添加"),
                  onPressed: handle,
                ),
                FlatButton.icon(
                  icon: Icon(Icons.info),
                  label: Text("详情"),
                  onPressed: handle,
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}