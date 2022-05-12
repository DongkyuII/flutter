import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column row',
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.blue,
              child: Text('Container1'),
            ),
            SizedBox(
              width: 30.0,
            ),
            Container(
              height: 100,
              color: Colors.red,
              child: Text('Container2'),
            ),
            Container(
              height: 100,
              color: Colors.green,
              child: Text('Container3'),
            ),
          ],
        ),
      ),
    );
  }
}
