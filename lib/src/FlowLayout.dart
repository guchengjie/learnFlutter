import 'package:flutter/material.dart';

class FlowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Column(
        children: <Widget>[
          // Row(
          //   children: <Widget>[
          //     Text(
          //       'asfdiafjkashdfjkhsajdfhjlkashdfjaskdfjashfdjhjfdghsfdgjhsdjghlsjdfgsdfg',
          //       style: TextStyle(fontSize: 30.0),
          //     ),
          //   ]
          // ),
          Wrap(
            spacing: 8.0,
            alignment: WrapAlignment.center,
            runSpacing: 4.0,
            children: <Widget>[
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
                label: new Text('Hamilton'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
                label: new Text('Lafayette'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
                label: new Text('Mulligan'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('Laurens'),
              ),
              new Chip(
                avatar: new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
                label: new Text('banana'),
              ),
            ],
          )
        ],
      )
    );
  }
}