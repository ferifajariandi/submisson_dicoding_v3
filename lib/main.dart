import 'package:flutter/material.dart';
import 'package:submission_dicoding/splashScreen/splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BPR WM',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      const SplashScreen(),
    );
  }
}
