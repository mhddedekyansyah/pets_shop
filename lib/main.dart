import 'package:flutter/material.dart';
import 'package:pets_shop/pages/pages.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home :MyApp()
  ));

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}