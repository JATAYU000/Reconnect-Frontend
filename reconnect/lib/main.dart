import 'package:flutter/material.dart';
import 'package:reconnect/src/pages/welcomepage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trail Tales',
      theme: ThemeData(),
      home: WelcomePage(scwidth: width, scheight: height),
    );
  }
}