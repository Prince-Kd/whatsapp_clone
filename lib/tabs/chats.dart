// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: List<Widget>.generate(20, (i) {
          return ListTile(
            horizontalTitleGap: 1,
            contentPadding: EdgeInsets.fromLTRB(2.0, 0.0, 10.0, 0.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage('kd.jpg'),
              radius: 40.0,
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('ColdBlood', style: TextStyle(fontSize: 22.0)),
                    Text(
                      '10:50 AM',
                      style: TextStyle(color: Colors.grey[500]),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey[200],
                  thickness: 1.0,
                )
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.check, color: Colors.grey[500]),
                Text(
                  'How are you?',
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ChatScreen();
              }));
            },
            leading: FittedBox(
              fit: BoxFit.cover,
              child: CircleAvatar(
                backgroundImage: AssetImage('kd.jpg'),
                radius: 50.0,
              ),
            ),
            title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ColdBlood', style: TextStyle(fontSize: 22.0)),
                  Text(
                    '10:50 AM',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ]),
            subtitle: Row(
              children: <Widget>[
                Icon(Icons.check, color: Colors.grey[500]),
                Text(
                  'How are you?',
                  style: TextStyle(fontSize: 18, color: Colors.grey[500]),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey[160],
            thickness: 1.0,
            indent: 100.0,
            endIndent: 10.0,
          );
        },
        itemCount: 15);
  }
}
