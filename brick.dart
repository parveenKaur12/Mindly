/*
* NAME OF CODE ARTIFACT - brick.dart
* BRIEF DESCRIPTION - Helps with the Game Page 
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - Feb 23
* DATE REVISED - February 23
                 Jowaki Merani - created brick fro pingpong game game
* KNOWN FAULT - None
*/
import 'package:flutter/material.dart';

class Brick extends StatelessWidget {
  final x;
  final y;
  final brickWidth;
  final isEnemy;
  Brick( this.x, this.y, this.brickWidth, this.isEnemy);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment((2* x +brickWidth)/(2-brickWidth), y),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
              alignment: Alignment(0, 0),
              color: isEnemy?Colors.purple[500]: Colors.pink[300],
              height: 20,
              width:MediaQuery.of(context).size.width * brickWidth/ 2,
              ),
        ));
  }
}