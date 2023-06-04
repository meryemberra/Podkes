import 'package:flutter/material.dart';
import 'package:flutter_learn/screens/music_info.dart';
import 'package:flutter_learn/screens/splash.dart';
import 'package:flutter_learn/screens/HomePage.dart';
import 'package:flutter_learn/utils/colors.dart';


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
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent ),
      ),
      home: const Musicpage(),
    );
  }
}


