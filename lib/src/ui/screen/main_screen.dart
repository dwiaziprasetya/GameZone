import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Image.network(
      'https://cdn.wccftech.com/wp-content/uploads/2024/06/Black-Myth_-Wukong_Key-Art-scaled.jpeg',
    ));
  }
}
