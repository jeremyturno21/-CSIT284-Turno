import 'package:flutter/material.dart';
import 'styled text.dart';

 
class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  final List<Color> color;
  var currentDiceRoll = ''

  void rollDice() {

  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.red],
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(width: 150, 
            'assets/dice-image/dice-1.png'),
            SizedBox(height)
            TextButton(onPressed: () {}, 
            child: Text(
              "Roll Dice"))  
        ],
        )
      ),
     ),
    )
  )