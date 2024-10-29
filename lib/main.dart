import 'package:flutter/material.dart';
import 'package:gamezone/src/ui/screen/main_screen.dart';
import 'package:gamezone/src/ui/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Zone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
