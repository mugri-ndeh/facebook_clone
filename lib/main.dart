import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/base_screen.dart';
import 'package:facebook_clone/screens/home/home_mobile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Palette.scaffold),
      home: BaseScreen(),
    );
  }
}
