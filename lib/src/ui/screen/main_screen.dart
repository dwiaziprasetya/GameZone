import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gamezone/src/models/image_poster.dart';
import 'package:gamezone/src/models/model_game.dart';
import 'package:gamezone/src/ui/screen/detail_screen.dart';
import 'package:gamezone/src/ui/widget/image_slider_widget.dart';
import 'package:gamezone/src/ui/widget/item_game.dart';
import 'package:gamezone/src/ui/widget/section_title_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GameModel> shuffledGameData = List.from(gameModelData)
      ..shuffle(Random());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Set to start
          children: [
            const ImageSliderWidget(),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                top: 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Set to start
                children: [
                  const Center(
                    child: Text(
                      'Hey, DwiAziP',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: 'DMSans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Track your games and explore new ones!',
                      style: TextStyle(
                        color: Color.fromARGB(255, 203, 203, 203),
                        fontFamily: 'DMSans',
                      ),
                    ),
                  ),
                  const SectionTitle(
                    title: 'Popular Games',
                    actionText: 'See all',
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final GameModel game = gameModelData[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(game: game);
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: GameItem(game: game),
                            ),
                          ),
                        );
                      },
                      itemCount: imagePosterData.length,
                    ),
                  ),
                  const SectionTitle(
                    title: 'Upcoming Games',
                    actionText: 'See all',
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final GameModel game = shuffledGameData[index];
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(game: game);
                              }));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top: 16.0),
                              child: GameItem(game: game),
                            ),
                          ),
                        );
                      },
                      itemCount: imagePosterData.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
