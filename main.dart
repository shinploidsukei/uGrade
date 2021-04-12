import 'package:flutter/material.dart';
import 'Splash_screen.dart';

void main() => runApp(MyRootApp());

class MyRootApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF)),
      home: SplashScreen(),
    );
  }
}