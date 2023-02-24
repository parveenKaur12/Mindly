/*
* NAME OF CODE ARTIFACT - welcomeScreen.dart
* BRIEF DESCRIPTION - Helps with the Game Page welcome page
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - February 23
* DATE REVISED - February 23
                 Jowaki Merani - created pingpong game
* KNOWN FAULT - None
*/
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
 
  final bool gameStarted;
  Welcome(this.gameStarted);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(0, -0.2),
        child: Text(
         gameStarted ? "": "T A P   T O   P L A Y",
          style: TextStyle(color: Colors.white),
        ));
  }
}