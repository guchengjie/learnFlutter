import 'package:flutter/material.dart';
import 'src/selfStateWidget.dart';
import 'src/textWidget.dart';
import 'src/formWidget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter demo', // 应用名称
      theme: ThemeData(
        primaryColor: Colors.blue, // 应用主题
      ),
      initialRoute: 'formWidget', // 设置首页的路由key为“/”
      routes: { // 路由表
        // 'new_route': (context) => NewRoute(text: ModalRoute.of(context).settings.arguments),
        '/': (context) => new CalculatorPage(title: 'Flutter Demo Home Page'), // 应用首页路由
        'widgetStateSelf': (context) => new SelfStateWidget(),
        'textWidget': (context) => new TextWiTextdget(),
        'formWidget': (context) => new FormWiTextdget(),
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
  void initState() {
    // 当Widget第一次插入到Widget树时会被调用，对于每一个State对象，Flutter framework只会调用一次该回调，所以，
    // 通常在该回调中做一些一次性的操作，如状态初始化、订阅子树的事件通知等。
    super.initState();
    //print(widget); // 组件实例
    print('initstate');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    // 它主要是用于构建Widget子树的
    // 在调用initState()之后。
    // 在调用didUpdateWidget()之后。
    // 在调用setState()之后。
    // 在调用didChangeDependencies()之后。
    // 在State对象从树中一个位置移除后（会调用deactivate）又重新插入到树的其它位置之后。
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

  @override
  void didUpdateWidget(CalculatorPage oldWidget) {
    // 组件树发生改变时，并且canUpdate为true才进行调用
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    // State对象从树中被移除时，会调用此回调
    super.deactivate();
    print("deactive");
  }

  @override
  void dispose() {
    // 当State对象从树中被永久移除时调用；通常在此回调中释放资源
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    // 此回调是专门为了开发调试而提供的，在热重载(hot reload)时会被调用，此回调在Release模式下永远不会被调用
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    // 当State对象的依赖发生变化时会被调用
    // 典型的场景是当系统语言Locale或应用主题改变时，Flutter framework会通知widget调用此回调
    super.didChangeDependencies();
    print("didChangeDependencies");
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