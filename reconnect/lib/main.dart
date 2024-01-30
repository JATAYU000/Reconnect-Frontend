import 'package:flutter/material.dart';
import 'package:reconnect/src/pages/dashboard.dart';
import 'package:reconnect/src/pages/welcomepage.dart';
import 'package:reconnect/src/shared_pref/shared_prefs.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late bool _islog = false;
  @override
  void initState() {
    super.initState();
    _loadPreferences();
    saveBool('req', true);
  }

  // Method to load the shared preference data
  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _islog = prefs.getBool('isLoggedIn') ?? false;

      // _islog =false;
    });
    prefs.setBool('isReq',true);
    print(_islog);
  }
  
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    int width = MediaQuery.of(context).size.width.toInt();
    int height = MediaQuery.of(context).size.height.toInt();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reconnect',
      theme: ThemeData(),
      home: _islog ? DashboardPage(scwidth: width, scheight: height) : WelcomePage(scwidth: width, scheight: height) 
    );
  }
}