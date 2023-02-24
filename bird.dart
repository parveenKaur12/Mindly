

import 'package:flutter/material.dart';

class MyBird extends StatelessWidget { // creating the bird
  final birdY;// y coordinate 
  MyBird({this.birdY}); // constructor

  Widget build(BuildContext context) { // building the bird
    return Container( // container
      alignment: Alignment(0, birdY), // align the bird
      child: Image.asset( // image for bird
        'assets/bear.png',// image
        width: 90,// size
      ),
    );
  }
}
