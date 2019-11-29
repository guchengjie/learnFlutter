import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter demo', // 应用名称
      theme: ThemeData(
        primaryColor: Colors.blue, // 应用主题
      ),
      home: new CalculatorPage(title: 'Flutter Demo Home Page'), // 应用首页路由
    );
  }
}

class CalculatorPage extends StatefulWidget {
  CalculatorPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  CalculatorState createState() {
    return new CalculatorState();
  }
}

class CalculatorState extends State<CalculatorPage> {
  int _counter = 0; // 声明点击次数的私有变量

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var floatingActionButton2 = FloatingActionButton(
      onPressed: _incrementCounter,
      child: Icon(Icons.add),
      tooltip: 'add',
    );
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title)),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              '在这里可以看到点击的次数',
              style: TextStyle(
                fontSize: 30.0,
                backgroundColor: Colors.red
              )
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('create new route'),
              textColor: Colors.blue,
              onPressed: () async {
                //导航到新路由
                var result = await Navigator.push( // 导航器
                  context,
                  MaterialPageRoute( // 继承PageRouter的路由组件
                    builder: (context) {
                      return new NewRoute(text: '我是上一页的文字');
                    },
                    // maintainState: true,
                    // fullscreenDialog: true,
                  )
                );
                print(result);
              },
            )
          ],
        ),
      ),
      floatingActionButton: floatingActionButton2,
    );
  }
}

class NewRoute extends StatelessWidget {
  NewRoute({ Key key, @required this.text }) : super(key : key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new router'),
      ),
      body: Center(
        child: FlatButton(
          textColor: Colors.blue,
          child: Text('go back params:$text'),
          onPressed: () {
            Navigator.pop(context, '我是返回值');
          },
        ),
      ),
    );
  }
}