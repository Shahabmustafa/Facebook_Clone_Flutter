import 'package:facebook_clone/Screen/Splash_Screen/splash_screen.dart';
import 'package:facebook_clone/Screen/login_screen.dart';
import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:  SplashPage(),
    );
  }
}
