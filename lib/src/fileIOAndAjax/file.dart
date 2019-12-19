import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

class FileWidget extends StatefulWidget {
  @override
  FileState createState() {
    return FileState();
  }
}

class FileState extends State<FileWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    getCounter().then((counter) {
      setState(() {
        _counter = counter;
      });
    });
  }

  Future<File> getLocalFile() async {
    String dir = (await getApplicationDocumentsDirectory()).path;
    print(dir);
    return new File('$dir/counter.txt');
  }

  Future<int> getCounter() async {
    try {
      File file = await getLocalFile();
      String contents = await file.readAsString();
      return int.parse(contents);
    } on FileSystemException {
      return 0;
    }
  }

  Future<Null> _incrementCounter() async {
    File file = await getLocalFile();
    setState(() {
      _counter++;
    });
    await file.writeAsString('$_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文件操作IO'),
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            child: Text('$_counter'),
            onPressed: _incrementCounter,
          ),
        ),
      ),
    );
  }
}