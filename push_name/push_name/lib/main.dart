import 'package:flutter/material.dart';
import 'package:push_name/ScreenA.dart';
import 'package:push_name/ScreenB.dart';
import 'package:push_name/ScreenC.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenA(),
        '/b': (context) => ScreenB(),
        '/c': (context) => ScreenC()
      },
    );
  }
}
