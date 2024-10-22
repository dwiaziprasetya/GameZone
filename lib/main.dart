import 'package:flutter/material.dart';
import 'package:gamezone/src/ui/theme/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game Zone',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(backgroundColor: backgroundColor)),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Game Zone',
                  style: TextStyle(
                      color: onPrimary,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w100))),
        ),
        body: const Center(
          child: Text(
            'Welcome, to Game Zone',
            style: TextStyle(color: onPrimary, fontFamily: 'Poppins'),
          ),
        ),
      ),
    );
  }
}
