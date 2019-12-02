import 'package:flutter/material.dart';

class SelfStateWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SelfStateWidgetState();
  }
}

class SelfStateWidgetState extends State<SelfStateWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newVal) {
    setState(() {
      _active = newVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChildStateWidget(
          active: _active,
          onChange: _handleTapboxChanged,
        ),
    );
  }
}

class ChildStateWidget extends StatelessWidget {
  ChildStateWidget({ Key key, this.active, @required this.onChange }) : super(key: key);

  final bool active;
  final ValueChanged<bool> onChange;

  void _handleTap() {
    onChange(!active);
  }

  @override
  Widget build(BuildContext context) {
    print(active);
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}