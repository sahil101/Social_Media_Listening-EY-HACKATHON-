import 'package:flutter/material.dart';
import 'package:myapp/Front_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EY Social Media Listening',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FrontPage(),
    );
  }
}
