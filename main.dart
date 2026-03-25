import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/about.dart';
import './screens/profile.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => About(),
        '/profile': (context) => Profile(),
      },
    );
  }
}