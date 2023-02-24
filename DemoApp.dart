// ignore_for_file: unused_local_variable

/*
* NAME OF CODE ARTIFACT - DemoApp.dart
* BRIEF DESCRIPTION - this file creates the home page for the application  
* PROGRAMMERS NAME - Jowaki Merani
* DATE CODE CREATED - November 4th, 2022
* DATE REVISED - November 4th 
                 Jowaki Merani - created the homepage with all required widgets and buttons
                 Nov 20th 
                 Jowaki Merani - able to redirect to journal page and store journal 
                 January 28th
                 Parveen Kaur - added constructors that take parameters.
* KNOWN FAULT - None
*/

import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/journal_page.dart';
import 'package:flutter_application_1/profileMenu_page.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
// import 'package:rive/rive.dart';

// ignore: use_key_in_widget_constructors
class DemoApp extends StatefulWidget {
  String email; // email to be sent to profile page
  DemoApp({required this.email}); // constructor
  @override
  // ignore: library_private_types_in_public_api
  _DemoAppState createState() => _DemoAppState(
      email: '${email}'); // add a constructor that takes a parameter
}

class _DemoAppState extends State<DemoApp> {
  //class for the home page
  String email;
  late DateTime selectedDay =
      DateTime.now(); //getting the current data as the selected date
  late List<CleanCalendarEvent>
      selectedEvent; //to help select an event in the future

  late Map<DateTime, List<CleanCalendarEvent>> events = {};

  _DemoAppState({required this.email}); //create events// constructor
  void _handleData(date) {
    //maps the selected date
    setState(() {
      selectedDay = date; //dynamically updating whne a date is selected
      selectedEvent = events[selectedDay] ?? []; //assists above
    });
    // print(selectedDay);//desplays selected date to debug
  }

  @override
  void initState() {
    //refreshing the selected date on a new click
    selectedEvent = events[selectedDay] ?? [];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //creating the main page
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
            color: Colors.blue,
            child: Row(
              children: <Widget>[
                IconButton(
                  // button
                  // mainAxisAlignment: MainAxisAlignment.center,
                  icon: Image.asset('assets/game.png'), //image
                  iconSize: 50, //size
                  onPressed: () {
                    //functionality
                    Navigator.pushNamed(context, 'game_menu');
                  },
                ),
                // IconButton(
                //   // button
                //   // mainAxisAlignment: MainAxisAlignment.center,
                //   icon: Image.asset('assets/pingpong.jpg'), //image
                //   iconSize: 50, //size
                //   onPressed: () {
                //     //functionality
                //     Navigator.pushNamed(context, 'paint_pad');
                //   },
                // ),
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
                  }, //functionality
                ),
              ],
            )),
        //builds the base
        backgroundColor:
            Color.fromARGB(255, 172, 212, 245), //set background color
        appBar: AppBar(
          //creates the app bar at the top
          title: Text('MINDLY'), //test in the app bar
          automaticallyImplyLeading: false,
          centerTitle: true, //locating of the text
          actions: <Widget>[
            IconButton(
              icon: Image.asset('assets/profile.png'), //image
              onPressed: () {
                // do something
                // print('${email}');
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SettingsPageUI(
                          email: ('${email}'),
                        )));
                // Navigator.pushNamed(context, 'profileMenu_page');
              },
            ),
          ],
        ),
        body: //creating the body
            Stack(
          children: [
            //creating a stack of the children
            SizedBox(
              //sizebox for teh calander
              height: 500, //height of the calander widget
              width: 500, //width of the calander widget
              child: Container(
                //contaner of the calander widget
                height: 700, //height of the calander widget
                width: 500, //height of the calander widget
                child: Calendar(
                  //calander widgent started

                  startOnMonday: true, //start date to be Monday
                  selectedColor: Colors.black, //color of text is black
                  todayColor: Colors.red, //todays selected color is red
                  eventColor: Colors.green, //adding an event will give a green
                  eventDoneColor: Colors.amber, //completed event turns amber
                  bottomBarColor: Colors.deepOrange, //bottom bar is orange
                  onRangeSelected: (range) {
                    //bottom bar is populated by teh selected date
                    // print('selected Day ${range.from},${range.to}');//print selected date
                  },
                  onDateSelected: (date) async {
                    events = await Navigator.push(
                        //ass event to date
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MyJournal(), //redirect to journal pg
                        ));
                    // Navigator.pushNamed(context, 'journal_page');

                    return _handleData(date); //return the selected date
                  },
                  events: events, //revording teh events
                  isExpanded: true, //possibility to expand
                  dayOfWeekStyle: TextStyle(
                    //formatting the text
                    fontSize: 15, //text size
                    color: Colors.black, //text color
                    fontWeight: FontWeight.w100, //opacity
                  ),
                  bottomBarTextStyle: TextStyle(
                    //bottom bar formating
                    color: Colors.white, //color of bottom bar
                  ),
                  hideBottomBar: false, //hide the bar
                  hideArrows: false, //hide the arrows
                  weekDays: [
                    'Mon',
                    'Tue',
                    'Wed',
                    'Thu',
                    'Fri',
                    'Sat',
                    'Sun'
                  ], //defining the days of teh week
                ),
              ),
            ),
          ],
        ));
  }
}
