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
            Row(
              children: <Image>[
                Image(
                  image: AssetImage('asset/images/avatar.jpg'),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.fill, // 会拉伸填充满显示空间，图片本身长宽比会发生变化，图片会变形。
                  color: Colors.blue,
                  colorBlendMode: BlendMode.difference,
                ),
                Image.asset(
                  'asset/images/avatar.jpg',
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.cover, // 会按图片的长宽比放大后居中填满显示空间，图片不会变形，超出显示空间部分会被剪裁。
                ),
                Image.network(
                  'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=2531384262,3699915741&fm=26&gp=0.jpg',
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.contain, // 这是图片的默认适应规则，图片会在保证图片本身长宽比不变的情况下缩放以适应当前显示空间，图片不会变形。
                ),
                Image(
                  image: AssetImage('asset/images/avatar.jpg'),
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.fitWidth, // 图片的宽度会缩放到显示空间的宽度，高度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
                ),
              ],
            ),
            Row(
              children: <Image>[
                Image(
                  image: AssetImage('asset/images/avatar.jpg'),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.fitHeight, // 图片的高度会缩放到显示空间的高度，宽度会按比例缩放，然后居中显示，图片不会变形，超出显示空间部分会被剪裁。
                ),
                Image(
                  image: AssetImage('asset/images/avatar.jpg'),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.scaleDown,
                ),
                Image(
                  image: AssetImage('asset/images/avatar.jpg'),
                  width: 100.0,
                  height: 50.0,
                  fit: BoxFit.fill, // 填充满显示空间
                ),
                Image(
                  image: AssetImage('asset/images/avatar.jpg'),
                  width: 50.0,
                  height: 50.0,
                  fit: BoxFit.none, // 图片没有适应策略，会在显示空间内显示图片，如果图片比显示空间大，则显示空间只会显示图片中间部分
                ),
              ]
            ),
            Row(
              children: <Widget>[
                Text(
                  '\uE914\uE000\uE90D',
                  style: TextStyle(
                    fontFamily: "MaterialIcons",
                    fontSize: 24.0,
                    color: Colors.green
                  ),
                ),
                Icon(Icons.accessible,color: Colors.green,),
                Icon(Icons.error,color: Colors.green,),
                Icon(Icons.fingerprint,color: Colors.green,),
              ],
            )
          ],
        )
      ),
    );
  }
}