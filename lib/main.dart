import 'package:flutter/material.dart';
import 'package:islami/features/nav/bottom_nav_bar.dart';
import 'package:islami/features/nav/main_screen.dart';

void main() {
  runApp(IslamiApp());
}

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  home: ,
      routes: {'/': (context) => BottomNavBar()},
    );
  }
}
