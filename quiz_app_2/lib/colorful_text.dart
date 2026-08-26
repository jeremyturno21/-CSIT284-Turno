import 'dart:math';
import 'package:flutter/material.dart';

class ColorfulText extends StatefulWidget {
  const ColorfulText({super.key});

  @override
  State<ColorfulText> createState() => _ColorfulTextState();
}

class _ColorfulTextState extends State<ColorfulText> {
  final randomizer = Random();
  var colors = {
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue
  };
  int select = 0;

  void startQuiz() {
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: colors.elementAt(select),
        ),
        Text(
          "Learn Flutter in a fun way!",
          style: TextStyle(
            color: colors.elementAt(select),
            fontSize: 28,
          ),
        ), // Text
        OutlinedButton(
          onPressed: startQuiz,
          child: Text(
            'Start Quiz',
            style: TextStyle(
              color: colors.elementAt(select),
              fontSize: 28,
            ),
          ),
        ) // OutlinedButton
      ],
    ); // Column
  }
}