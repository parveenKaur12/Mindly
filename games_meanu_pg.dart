// /*
// * NAME OF CODE ARTIFACT - games_meanu_pg.dart
// * BRIEF DESCRIPTION - This creates the frontend settings page
// * PROGRAMMERS NAME - Jowaki Merani
// * DATE CODE CREATED - February 23 2023
// * DATE REVISED -
// * KNOWN FAULT - None
// */

import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile.dart';

import 'dart:collection';
import 'dart:convert';
import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart' as mongo;
// import 'package:mongo_dart/mongo_dart.dart';
import 'constant.dart';



class MyGame_Meanu extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    // build page
    return Scaffold(
        backgroundColor:
            Color.fromARGB(255, 172, 212, 245), //page background color
        appBar: AppBar(
          // title of app
          title: Text("Games", style: TextStyle(fontSize: 22)),
          
        ),
        body: Container(
            // body of the page
            padding: const EdgeInsets.all(10), // padding
            child: ListView(
              // page view
              children: [
                SizedBox(height: 40), // size of box
                Row(
                  children: [
                    Icon(
                      //title of a part of the page with image
                      Icons.person,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 10),
                    Text("Games", // title
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold))
                  ],
                ),
                Divider(
                    height: 20,
                    thickness: 1), // a divider between title and contents
                SizedBox(height: 10),
                BearJump(context, "Bear Jump"), // contents
                PingPong(context, "Ping Pong"), //contents
                // Reminders(context, "Set Daily Reminders"), //contents
              ],
            )));
  }


  GestureDetector BearJump(BuildContext context, String title) {
    // for graph
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(
              context, 'tap_game'); // if tapped, go to next page
        },
        child: Padding(
          //padding
          padding: const EdgeInsets.symmetric(
              vertical: 8, horizontal: 20), // padding details
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //alignment
            Text(title, // title
                style: TextStyle(
                    // text style/ aesthetic
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            Icon(Icons.arrow_forward, color: Colors.black) // type of arrow
          ]),
        ));
  }

  GestureDetector PingPong(BuildContext context, String title) {
    // for reminders
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(
              context, 'ping_pong'); // if tapped go to reminders page
        },
        child: Padding(
          //padding
          padding: const EdgeInsets.symmetric(
              vertical: 8, horizontal: 20), //padding details
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //alignment
            Text(title, // text and its type
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            Icon(Icons.arrow_forward, color: Colors.black) // type of arrow
          ]),
        ));
  }
  
  
}
