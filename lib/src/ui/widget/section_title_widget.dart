import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String actionText;

  const SectionTitle({
    super.key,
    required this.title,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'DMSans',
            ),
          ),
          Text(
            actionText,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'DMSans',
            ),
          ),
        ],
      ),
    );
  }
}
