/*
* NAME OF CODE ARTIFACT - animal.dart
* BRIEF DESCRIPTION - Implimented animal page 
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - Feb 23
* DATE REVISED - February 23
                 Jowaki Merani - merged animal for feelings animal 
* KNOWN FAULT - None
*/
import 'package:flutter/material.dart';
// import 'package:flare_flutter/flare_actor.dart';
import 'package:rive/rive.dart';

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/journal_page.dart';
import 'package:flutter_application_1/profileMenu_page.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import 'package:rive/rive.dart';

// void main() => runApp(MyHomePage());

// class MyAnimal extends StatelessWidget {
// @override
// Widget build(BuildContext context) {
// 	return MaterialApp(
// 	title: 'GeeksforGeeks',
// 	theme: ThemeData(
// 		primarySwatch: Colors.blue,
// 	),
// 	home: MyHomePage(),
// 	debugShowCheckedModeBanner: false,
// 	);
// }
// }

class MyAnimal extends StatefulWidget {
  @override
  _MyAnimalState createState() => _MyAnimalState();
}

class _MyAnimalState extends State<MyAnimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172, 212, 245),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(children: <Widget>[
          IconButton(
            icon: Image.asset('assets/game.png'), //image
            iconSize: 50, //size
            onPressed: () {
              //functionality
              Navigator.pushNamed(context, 'tap_game');
            },
          ),
          IconButton(
            // button
            // mainAxisAlignment: MainAxisAlignment.center,
            icon: Image.asset('assets/journal.png'), //image
            iconSize: 50, //size
            onPressed: () {
              //functionality
              Navigator.pushNamed(context, 'journal_page');
            },
          ),
          IconButton(
            //button
            // mainAxisAlignment: MainAxisAlignment.center,
            icon: Image.asset('assets/home.png'), //image
            iconSize: 50, //size
            onPressed: () {
              //functionality
              Navigator.pushNamed(context, 'home_page');
            },
          ),
          IconButton(
            // Icon buttom
            // mainAxisAlignment: MainAxisAlignment.center,
            icon: Image.asset('assets/music.png'), //image
            iconSize: 50, //size
            onPressed: () {
              Navigator.pushNamed(context, 'music_page');
            }, //functionality
          ),
          IconButton(
            tooltip: 'Open navigation menu',
            icon: Image.asset('assets/info.png'), //image
            iconSize: 50, //size
            onPressed: () {
              //functionality
              Navigator.pushNamed(context, 'resource_page');
            },
          ),
          IconButton(
            // Icon buttom
            // mainAxisAlignment: MainAxisAlignment.center,
            icon: Image.asset('assets/animal.png'), //image
            iconSize: 50, //size
            onPressed: () {
              Navigator.pushNamed(context, 'animal_page');
            },
          )
        ]),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 700,
                height: 300,
                child: RiveAnimation.asset(
                  "assets/bear.riv",
                  //test, success,idle,fail
                  // animation: "fail",
                  animations: ['success'],
                  // controllers: [[]{}],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
