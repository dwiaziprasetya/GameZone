import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gamezone/src/models/image_slider.dart';
import 'package:gamezone/src/ui/theme/color.dart';

class ImageSliderWidget extends StatefulWidget {
  const ImageSliderWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ImageSliderWidgetState();
  }
}

class _ImageSliderWidgetState extends State<ImageSliderWidget> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    bool isWebView = screenWidth > 500;

    return Padding(
      padding: EdgeInsets.only(top: isWebView ? 16 : 0),
      child: Column(
        children: [
          Stack(
            children: [
              CarouselSlider(
                items: imageSliderData.map(
                  (e) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(isWebView ? 30 : 0),
                      child: Image.asset(
                        e.imageAsset,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    );
                  },
                ).toList(),
                carouselController: _controller,
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: isWebView ? 0.4 : 1.0,
                  enlargeCenterPage: isWebView,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        backgroundColor.withOpacity(0.95),
                        Colors.transparent,
                      ],
                      stops: const [0, 1],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: const Offset(0, -20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageSliderData.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 6.0,
                    height: 6.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amberAccent
                          .withOpacity(_current == entry.key ? 0.9 : 0.3),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
