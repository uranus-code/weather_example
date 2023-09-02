import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_example/constants.dart';
import 'package:weather_example/screens/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      scrollBehavior: const CupertinoScrollBehavior(),
      theme: ThemeData(
        scaffoldBackgroundColor: kscaffoldBackgroundColor,
        fontFamily: "Urbane",
        colorScheme: const ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          backgroundColor: kscaffoldBackgroundColor,
          elevation: 0,
        ),
      ),
      home: const IntroScreen(),
    );
  }
}
