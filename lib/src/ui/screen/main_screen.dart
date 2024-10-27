import 'package:flutter/material.dart';
import 'package:gamezone/src/ui/widget/image_slider_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ImageSliderWidget(),
    );
  }
}
