import 'package:flutter/material.dart';
import 'package:pedshop/screens/first_screen/first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Adopt', home: FirstScreen());
  }
}
