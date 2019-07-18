import 'package:flutter/material.dart';
import 'package:greenery/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greenery NYC',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


