import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const HomePage({super.key, required this.scwidth,required this.scheight,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Homepage"));
  }
}