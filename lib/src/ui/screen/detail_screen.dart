import 'package:flutter/material.dart';
import 'package:gamezone/src/models/image_poster.dart';
import 'package:gamezone/src/models/image_snapshot.dart';
import 'package:gamezone/src/ui/theme/color.dart';
import 'package:gamezone/src/ui/widget/section_title_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/image_detail_god_of_war_ragnarok.jpg',
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 0,
              ),
              child: Transform.translate(
                offset: const Offset(0, -30),
                child: const SizedBox(
                  width: 300,
                  child: Text(
                    'God of War Ragnarok',
                    style: TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Santa Monica Studio',
                    style: TextStyle(
                      fontFamily: 'DMSans',
                      fontSize: 16,
                      color: Colors.amberAccent,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'God of War Ragnarök is an action-adventure game where players take the role of Kratos and his son as they embark on a quest to prevent the coming of Ragnarök. Players explore the Nine Realms, battling enemies in close-up, hand-to-hand combat against human-like raiders and fantastical creatures.',
                    style: TextStyle(
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
                    final ImageSnapshot snapshot = imageSnapshotData[index];
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
                                    snapshot.imageAsset,
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
    );
  }
}
