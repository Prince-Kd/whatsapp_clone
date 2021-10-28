// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/details.dart';
import 'package:whatsapp_clone/screens/messages.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  final String name = 'Coldblood';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Expanded(
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Details(name: name);
                  }));
                },
                child: SizedBox(width: double.infinity, child: Text(name)))),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                backgroundImage: AssetImage('assets/kd.jpg'),
              ),
            ],
          ),
        ),
        leadingWidth: 70,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            'benz.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Positioned(
              bottom: 66.0,
              child: Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 66.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 5.0),
                                  padding: EdgeInsets.all(7.0),
                                  constraints: BoxConstraints(
                                    minHeight: 20.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.lightGreen[200],
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text('Hey?',
                                      style: TextStyle(fontSize: 18.0)),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(7.0),
                                  constraints: BoxConstraints(
                                    minHeight: 20.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text('How are you?',
                                      style: TextStyle(fontSize: 18.0)),
                                ),
                              ]),
                        ])),
              )),
          Positioned(
            bottom: 0.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      filled: true,
                      fillColor: Colors.white,
                      constraints: BoxConstraints(
                        maxWidth: 330.0,
                        maxHeight: 50.0,
                      ),
                      hintText: 'Type a message',
                      prefixIcon: Icon(Icons.emoji_emotions_outlined),
                      suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.attachment,
                                  color: Colors.black,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                )),
                          ]),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.mic,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.green[900],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
