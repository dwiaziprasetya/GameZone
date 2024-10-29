import 'package:flutter/material.dart';
import 'package:gamezone/src/models/model_game.dart';

class GameItem extends StatelessWidget {
  const GameItem({
    super.key,
    required this.game,
  });

  final GameModel game;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Set to start
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                game.imageAsset,
                width: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 130,
            child: Text(
              game.name,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'DMSans',
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
