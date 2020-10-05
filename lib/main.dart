import 'package:flutter/material.dart';
import 'package:food_detail/pages/dashboard.dart';
import 'package:food_detail/shared/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: purpleColor,
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 2 * defaultMargin, 0, 0),
          child: DasboardPage(),
        ),
      ),
    );
  }
}
