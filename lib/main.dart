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
      initialRoute: '/', // 设置首页的路由key为“/”
      routes: { // 路由表
        // 'new_route': (context) => NewRoute(text: ModalRoute.of(context).settings.arguments),
        '/': (context) => new CalculatorPage(title: 'Flutter Demo Home Page'), // 应用首页路由
      },
      // 当调用Navigator.pushNamed(...)打开命名路由时，如果指定的路由名在路由表中已注册，则会调用路由表中的builder函数来生成路由组件；
      // 如果路由表中没有注册，才会调用onGenerateRoute来生成路由
      onGenerateRoute: (RouteSettings settings) { // 按照路由来控制访问权限
        return MaterialPageRoute(
          builder: (context) {
            String routeName = settings.name;
            print(routeName);
            return Scaffold(
              appBar: AppBar(
                title: Text('我被拦截了'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('被拦截了，好惨')
                  ],
                ),
              ),
            );
          }
        );
      },
      // home: new CalculatorPage(title: 'Flutter Demo Home Page'), // 应用首页路由
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
                var result = await Navigator.pushNamed(context, 'new_route', arguments: 'hi');
                print('home: $result');
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
    print('关闭当前路由也会执行一次build');
    return Scaffold(
      appBar: AppBar(
        title: Text('new router'),
      ),
      body: Center(
        child: FlatButton(
          textColor: Colors.blue,
          child: Text('go back params:$text'),
          onPressed: () {
            Navigator.pop(context, 'hello');
          },
        ),
      ),
    );
  }
}