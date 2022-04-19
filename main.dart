// ignore_for_file: unused_import, duplicate_import, unnecessary_new, avoid_web_libraries_in_flutter

import 'dart:io';
// import 'dart:js_util';

import 'package:bmsflutter/Activities.dart';
// import 'package:bmsflutter/Buzz.dart';
import 'package:bmsflutter/Home.dart';
import 'dart:async';
import 'package:bmsflutter/loginsignup.dart';
import 'package:flutter/material.dart';
import 'package:bmsflutter/Home.dart';
import 'package:bmsflutter/Music.dart';
import 'package:bmsflutter/Plays.dart';
import 'package:bmsflutter/Profile.dart';
import 'package:bmsflutter/Sports.dart';
import 'package:flutter/material.dart';
import 'Movie.dart';
import 'package:bmsflutter/Events.dart';
import 'package:bmsflutter/Search.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
}
// void main() {
// runApp(MyApp());
// }

// void runApp(MyApp myApp) {
// }

class Splash extends StatefulWidget {
  @override
  static const String id = 'splash';
  // const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var duration = const Duration(seconds: 3);
    Timer(duration, () {
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => new MyApp()));
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginSignup()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: new BoxDecoration(
          image: new DecorationImage(image: AssetImage("Assets/bg.jpeg"))),
      child: new Padding(
        padding: EdgeInsets.only(bottom: 50.0),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      child: Scaffold(
        bottomNavigationBar: new Container(
            height: 60.0,
            color: Colors.white24,
            child: new TabBar(
                controller: controller,
                indicatorColor: Colors.transparent,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  new Icon(
                    Icons.home_outlined,
                    size: 28,
                  ),
                  new IconButton(
                      icon: new Icon(
                        Icons.search_outlined,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new Search()));
                      }),
                  new Icon(
                    Icons.headset_outlined,
                    size: 28,
                  ),
                  // new IconButton(
                  //     icon: new Icon(Icons.trending_up),
                  //     onPressed: () {
                  //       Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //               builder: (context) => new Buzz()));
                  //     }),
                  new Icon(
                    Icons.person_outline,
                    size: 28,
                  )
                ])),
        body: new TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: controller,
            children: [
              new Home(),
              new Search(),
              new Music(),
              // new Music(),
              new Profile(),
            ]),
      ),
      onWillPop: () {
        exit(0);
      },
    );
  }
}
