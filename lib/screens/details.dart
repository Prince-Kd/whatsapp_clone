// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String name;
  const Details({Key? key, required this.name}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green[900],
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/kd.jpg',
                fit: BoxFit.cover,
              ),
              title: Text(widget.name,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(color: Colors.grey[200]),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Custom Privacy',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              'Customize the privacy options for each contact/gro...',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ]),
                                      Switch(
                                          value: false, onChanged: (value) {})
                                    ])),
                            Divider(indent: 15),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hide Contact Name',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Switch(
                                          value: false, onChanged: (value) {})
                                    ])),
                            Divider(indent: 15),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Security',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text(
                                        'OFF',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ])),
                            Divider(indent: 15),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'No Calls',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Switch(
                                          value: false, onChanged: (value) {})
                                    ])),
                            Divider(indent: 15),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 15.0,
                                  bottom: 5.0,
                                ),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Contact Online Toast',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Switch(
                                          value: false, onChanged: (value) {})
                                    ])),
                          ],
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(
                        bottom: 15.0,
                      ),
                      child: Expanded(
                        child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                                top: 10.0,
                                bottom: 10.0,
                              ),
                              child: Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Media, links, and docs',
                                          style: TextStyle(
                                            color: Colors.green[500],
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text('2',
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 70,
                                      child: ListView(
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        children: [
                                          SizedBox(
                                            width: 70,
                                            height: 70,
                                            child: Image.asset(
                                                'assets/lambo.jpg',
                                                fit: BoxFit.cover),
                                          ),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          // SizedBox(
                                          //   width: 70,
                                          //   height: 70,
                                          //   child: Image.asset(
                                          //       'assets/spirit of ecstasy.jpg',
                                          //       fit: BoxFit.cover),
                                          // ),
                                          // SizedBox(
                                          //   width: 2,
                                          //)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ))
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
