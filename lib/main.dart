import 'package:flutter/material.dart';
import 'package:learning/screens/home_screen.dart';
import 'package:learning/screens/scond_screen.dart';
import 'package:learning/screens/third_screeen.dart';
import 'package:learning/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myThemeData,
      //home: HomeScreen(),
      initialRoute: '/', //  hada route les yefetah alih lewle
      routes: {
        '/': (context) => HomeScreen(),
        '/second': (context) => ScondScreen(),
        '/third': (context) => ThirdScreen(),
      },
    );
  }
}
