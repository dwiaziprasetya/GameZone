import 'package:flutter/material.dart';
import 'package:gamezone/src/models/image_snapshot.dart';
import 'package:gamezone/src/models/model_game.dart';
import 'package:gamezone/src/ui/theme/color.dart';
import 'package:gamezone/src/ui/widget/section_title_widget.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

class DetailScreen extends StatelessWidget {
  final GameModel game;

  const DetailScreen({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 500) {
          return DetailWebPage(game: game);
        } else {
          return DetailMobilePage(game: game);
        }
      },
    );
  }
}

class DetailWebPage extends StatelessWidget {
  const DetailWebPage({
    super.key,
    required this.game,
  });

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    game.imageDetailAsset,
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitHeight,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            backgroundColor.withOpacity(0.9),
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 0,
                ),
                child: Transform.translate(
                  offset: const Offset(0, -30),
                  child: Text(
                    game.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: Row(
                        children: [
                          Text(
                            game.genre,
                            style: const TextStyle(
                              fontFamily: 'DMSans',
                              fontSize: 16,
                              color: Colors.white70,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const FavouriteButton(),
                          const SizedBox(
                            width: 16,
                          ),
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromRGBO(162, 162, 162, 0.702),
                            child: IconButton(
                              icon: const Icon(
                                Icons.share,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Share.share(game.name);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      game.publisher,
                      style: const TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        color: Colors.amberAccent,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      game.description,
                      style: const TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SectionTitle(
                  title: 'Snapshot',
                  actionText: 'See all',
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, left: 16, right: 16, bottom: 16),
                child: SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: SizedBox(
                            width: 250,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start, // Set to start
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      game.imageUrls[index],
                                      width: 250,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: imageSnapshotData.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({
    super.key,
    required this.game,
  });

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    game.imageDetailAsset,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            backgroundColor.withOpacity(0.9),
                            Colors.transparent,
                          ],
                          stops: const [0, 1],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromRGBO(162, 162, 162, 0.702),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Row(
                            children: [
                              const FavouriteButton(),
                              const SizedBox(
                                width: 16,
                              ),
                              CircleAvatar(
                                backgroundColor:
                                    const Color.fromRGBO(162, 162, 162, 0.702),
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.share,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Share.share(game.name);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 0,
                ),
                child: Transform.translate(
                  offset: const Offset(0, -30),
                  child: Text(
                    game.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: Text(
                        game.genre,
                        style: const TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 16,
                          color: Colors.white70,
                          height: 1.5,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      game.publisher,
                      style: const TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        color: Colors.amberAccent,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      game.description,
                      style: const TextStyle(
                        fontFamily: 'DMSans',
                        fontSize: 16,
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SectionTitle(
                  title: 'Snapshot',
                  actionText: 'See all',
                  color: Colors.white70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 0, left: 16, right: 16, bottom: 16),
                child: SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: SizedBox(
                            width: 250,
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start, // Set to start
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      game.imageUrls[index],
                                      width: 250,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: imageSnapshotData.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({super.key});

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: const Color.fromRGBO(162, 162, 162, 0.702),
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavourite = !isFavourite;
          });
        },
        icon: Icon(
          isFavourite ? Icons.favorite : Icons.favorite_border,
          color: isFavourite ? Colors.red : Colors.white,
        ),
      ),
    );
  }
}
