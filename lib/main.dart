import 'package:flutter/material.dart';
import'homePage.dart';

void main() => runApp(MyCalc());

class MyCalc extends StatelessWidget {
  const MyCalc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'nesCAL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}


