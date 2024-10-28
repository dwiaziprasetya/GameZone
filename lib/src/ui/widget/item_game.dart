import 'package:flutter/material.dart';
import 'package:gamezone/src/models/image_poster.dart';

class GameItem extends StatelessWidget {
  const GameItem({
    super.key,
    required this.poster,
  });

  final ImagePoster poster;

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
                poster.imageAsset,
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
              poster.name,
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
