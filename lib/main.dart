import 'package:flutter/material.dart';
import 'package:hidden_drawer/pages/homepage.dart';
import 'hidden_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
    );
  }
}
