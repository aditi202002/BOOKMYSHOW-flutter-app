// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:bmsflutter/Activities.dart';
import 'package:bmsflutter/Plays.dart';
import 'package:bmsflutter/Sports.dart';
import 'package:flutter/material.dart';
import 'Movie.dart';
import 'package:bmsflutter/Events.dart';
// ignore: unused_import
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:bmsflutter/Search.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController controller;
  static var actionslist = [
    "All",
    "Movies",
    "Events",
    "Plays",
    "Sports",
    "Activities"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: actionslist.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF2E3336),
        titleSpacing: 0.0,
        title: TabBar(
            indicatorColor: Colors.transparent,
            isScrollable: true,
            controller: controller,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.white,
            tabs: actionslist
                .map((tab) => new Text(
                      tab,
                      style: new TextStyle(fontSize: 18.0),
                    ))
                .toList()),
      ),
      body: new TabBarView(controller: controller, children: [
        new All(controller),
        new Movie(),
        new Events(),
        new Plays(),
        new Sports(),
        new Activities(),
      ]),
    );
  }
}

class All extends StatefulWidget {
  TabController controller;

  All(this.controller);

  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  var movies = ["Pushpa", "Pawankhind", "lucifer", "Gangubai"];
  var sports = ["Worldcup", "la liga", "IPL", "ISL", "Bundesliga"];
  var events = ["Sunburn", "HardWell", "Holi Fest", "Justin bieber"];

  var decoration;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: new ListView(shrinkWrap: false, children: <Widget>[
              new Container(
                  height: 200.0,
                  child: new Column(children: <Widget>[
                    // showIndicator: true,
                    // indicatorBgPadding: 5.0,
                    // dotBgColor: Colors.transparent,
                    // dotSize: 5.0,
                    // boxFit: BoxFit.fill,

                    new Image.network(
                        'https://assets-in.bmscdn.com/iedb/movies/images/mobile/listing/xxlarge/pawankhind-et00307433-17-01-2022-05-27-05.jpg'),
                    // new NetworkImage(
                    //     'https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:q-80/et00135230-sfywfvrgms-portrait.jpg'),
                    // new NetworkImage(
                    //     'https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/83-et00062705-25-12-2021-02-47-08.jpg')
                    //  decoratio(
                    // image: DecorationImage(
                    //                 fit: BoxFit.cover,
                    // image: new DecorationImage(image: AssetImage("Assets/bg.jpeg"))),
                  ])),
              new Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Movies",
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new GestureDetector(
                            onTap: () {
                              widget.controller.animateTo(1);
                            },
                            child: Text(
                              "more",
                              style: new TextStyle(color: Colors.blue),
                            ))
                      ])),
              new GridView.count(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  crossAxisCount: 2,
                  children: movies
                      .map((movie) => new Container(
                          height: 1500.0,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new Container(
                                  height: 100.0,
                                  child: Card(
                                    elevation: 5.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0)),
                                    child: new ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.network(
                                        "https://assets-in.bmscdn.com/iedb/movies/images/mobile/listing/xxlarge/pawankhind-et00307433-17-01-2022-05-27-05.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )),
                              new Text(
                                movie,
                                style: new TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                ),
                              ),
                              new Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  new Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  new Text(
                                    "77%",
                                    style: new TextStyle(color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          )))
                      .toList()),
              new Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sports",
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new GestureDetector(
                            onTap: () {
                              widget.controller.animateTo(4);
                            },
                            child: Text(
                              "more",
                              style: new TextStyle(color: Colors.blue),
                            ))
                      ])),
              new Container(
                  height: 200.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: sports
                        .map(
                          (sports) => new Container(
                              height: 200.0,
                              width: 150.0,
                              child: new Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Container(
                                        height: 110.0,
                                        child: Card(
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: new ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            child: Image.network(
                                              "https://www.gc.ac.nz/wp-content/uploads/2018/03/sports-tools-640-417.jpg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        )),
                                    new Text(
                                      sports,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          new Icon(
                                            Icons.thumb_up,
                                            color: Colors.green,
                                          ),
                                          new Text("77%",
                                              style: new TextStyle(
                                                  color: Colors.black))
                                        ])
                                  ])),
                        )
                        .toList(),
                  )),
              new Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Events",
                          style: new TextStyle(fontWeight: FontWeight.bold),
                        ),
                        new GestureDetector(
                            onTap: () {
                              widget.controller.animateTo(2);
                            },
                            child: Text(
                              "more",
                              style: new TextStyle(color: Colors.blue),
                            ))
                      ])),
              new Container(
                  height: 200.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: events
                        .map(
                          (events) => new Container(
                              height: 200.0,
                              width: 150.0,
                              child: new Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Container(
                                        height: 110.0,
                                        child: Card(
                                          elevation: 5.0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0)),
                                          child: new ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            child: Image.network(
                                              "https://assets-in.bmscdn.com/nmcms/events/banner/mobile/media-mobile-sunburn-select-bigboyzlounge-0-2021-12-12-t-8-9-26.jpg",
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        )),
                                    new Text(
                                      events,
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          new Icon(
                                            Icons.thumb_up,
                                            color: Colors.blue,
                                          ),
                                          new Text("77%",
                                              style: new TextStyle(
                                                  color: Colors.black))
                                        ])
                                  ])),
                        )
                        .toList(),
                  ))
            ])));
  }

  Carousel(
      {required bool showIndicator,
      required double indicatorBgPadding,
      required Color dotBgColor,
      required double dotSize,
      required BoxFit boxFit,
      required List<NetworkImage> images}) {}
}
