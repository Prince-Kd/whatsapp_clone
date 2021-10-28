// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/tabs/calls.dart';
import 'package:whatsapp_clone/tabs/chats.dart';
import 'package:whatsapp_clone/tabs/status.dart';
import 'package:whatsapp_clone/tabs/webcam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home2(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WhatsApp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[900],
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
        bottom:
            TabBar(enableFeedback: false, indicatorColor: Colors.white, tabs: [
          Tab(
            iconMargin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: 'CHATS',
            child: Row(
              children: [
                Text('CHATS'),
                Badge(
                  badgeContent: Text('15'),
                  badgeColor: Colors.white,
                )
              ],
            ),
          ),
          Tab(
            text: 'STATUS',
          ),
          Tab(
            text: 'CALLS',
          ),
        ]),
      ),
      body: TabBarView(children: <Widget>[
        Webcam(),
        Chat(),
        Status(),
        Calls(),
      ]),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text(
                'WhatsApp',
                style: TextStyle(color: Colors.white),
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ],
              backgroundColor: Colors.green[900],
              floating: true,
              pinned: true,
              snap: true,
              bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      iconMargin:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                      icon: Icon(Icons.camera_alt),
                    ),
                    Tab(
                      text: 'CHATS',
                    ),
                    Tab(
                      text: 'STATUS',
                    ),
                    Tab(
                      text: 'CALLS',
                    ),
                  ]),
            ),
          ];
        },
        body: TabBarView(controller: _tabController, children: <Widget>[
          Webcam(),
          Chats(),
          Status(),
          Calls(),
        ]),
      ),
    );
  }
}
