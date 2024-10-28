import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String actionText;
  final Color color;

  const SectionTitle({
    super.key,
    required this.title,
    required this.actionText,
    this.color = Colors.white,
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
            style: TextStyle(
              color: color,
              fontFamily: 'DMSans',
            ),
          ),
          Text(
            actionText,
            style: TextStyle(
              color: color,
              fontFamily: 'DMSans',
            ),
          ),
        ],
      ),
    );
  }
}
