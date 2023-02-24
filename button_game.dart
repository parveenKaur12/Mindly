/*
* NAME OF CODE ARTIFACT - button_game.dart
* BRIEF DESCRIPTION - this file creates the tapping game  
* PROGRAMMERS NAME - Eduardo Sanchez
* DATE CODE CREATED - October 24th, 2022
* DATE REVISED - October 24th 
*                Eduardo Sanchez - creted the game 
*                November 4th 
                 Jowaki Merani - created the homepage with all required widgets and buttons
* KNOWN FAULT - None
*/

import 'package:flutter/material.dart';

void main() { // main program
  runApp(const buttonApp()); // runs the app in the main function.
}

class buttonApp extends StatelessWidget { // buttonApp class
  const buttonApp({super.key}); //allows for dependencies on configurations.
  @override
  Widget build(BuildContext context) { //allows the page to be built with widgets.
    return MaterialApp( // creates a class of widget apps.
      title: 'Tapping game demo', //title set to this string
      theme: ThemeData( // theme for the page
        primarySwatch: Colors.blue, //background to blue
        scaffoldBackgroundColor: Colors.blue, // scaffold, the top is set to blue.
      ),
      home: const MyHomePage(title: 'Mindly'), // defined as the home page and to display current string.
    );
  }
}

class MyHomePage extends StatefulWidget { // constructor for the page
  const MyHomePage({super.key, required this.title}); ////allows for dependencies on configurations.
  final String title; //displays text
  @override
  State<MyHomePage> createState() => _MyHomePageState(); // creates the page.
}

class _MyHomePageState extends State<MyHomePage> { //class for the counter
  int _counter = 0; // initial count for the counter.
  void _incrementCounter() { // function name.
    setState(() { //lets the framework know that this variable will change in the future.
      _counter++; // increases counter everytime function is called.
    });
  }

  @override
  Widget build(BuildContext context) { // widget build.
    return Scaffold( // returns the build to display on the page.
      appBar: AppBar( //appbar
        title: Text(widget.title), // title for the build.
      ),
      body: Center( // body to display in the center of the page.
        child: Column( //column 
          mainAxisAlignment: MainAxisAlignment.center, // centers the string below to the center of the screen.
          children: <Widget>[ // children of widgets
            const Text( // text widget build
              'You have pushed the button this many times:', // string to display above the counter.
              style: TextStyle(fontSize: 19, color: Colors.white), // font size and font color for the string.
            ),
            Text( //text widget build
              '$_counter', // displays counter variable.
              style: Theme.of(context).textTheme.headline4, // text style to display.
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( // the style of button to display on the screen.
        onPressed: _incrementCounter, //everytime the button is pressed, increment counter function is called.
        tooltip: 'Increment', // string displayed increment to the user.
        child: const Icon(Icons.add), // displayes the icon image on the button.
      ), 
    );
  }
}