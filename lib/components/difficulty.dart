import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {

  final int difficultyLevel;
  const Difficulty({
    required this.difficultyLevel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 1)
              ? Colors.yellow
              : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel>= 2)
              ? Colors.yellow
              : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 3)
              ? Colors.yellow
              : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel >= 4)
              ? Colors.yellow
              : Colors.red[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (difficultyLevel>= 5)
              ? Colors.yellow
              : Colors.red[100],
        ),
      ],
    );
  }
}