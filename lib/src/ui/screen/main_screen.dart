import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamezone/src/models/model_game.dart';
import 'package:gamezone/src/ui/screen/detail_screen.dart';
import 'package:gamezone/src/ui/widget/image_slider_widget.dart';
import 'package:gamezone/src/ui/widget/item_game.dart';
import 'package:gamezone/src/ui/widget/section_title_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scrollController1 = ScrollController();
  final _scrollController2 = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ImageSliderWidget(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 4,
                  bottom: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    if (screenWidth > 500)
                      Scrollbar(
                        controller: _scrollController1,
                        child: _buildGameList(),
                      )
                    else
                      _buildGameList(),
                    const Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Center(
                        child: Text(
                          'Top 5 Games this Month',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'DMSans',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    if (screenWidth > 500)
                      Scrollbar(
                        controller: _scrollController2,
                        child: _buildTopGameList(),
                      )
                    else
                      _buildTopGameList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGameList() {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        controller: _scrollController1,
        scrollDirection: Axis.horizontal,
        itemCount: gameModelData.length * 2,
        itemBuilder: (context, index) {
          final int actualIndex = index % gameModelData.length;
          final GameModel game = gameModelData[actualIndex];
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
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
      ),
    );
  }

  Widget _buildTopGameList() {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        controller: _scrollController2,
        scrollDirection: Axis.horizontal,
        itemCount: topGameModelData.length,
        itemBuilder: (context, index) {
          final GameModel topGame = topGameModelData[index];
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(game: topGame);
                }));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: SizedBox(
                  width: 300,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          topGame.imageAsset,
                          width: 300,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                topGame.name,
                                style: const TextStyle(
                                  fontFamily: 'DMSans',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "${topGame.review} reviews",
                                style: const TextStyle(
                                  fontFamily: 'DMSans',
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    super.dispose();
  }
}
