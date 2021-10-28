// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Webcam extends StatelessWidget {
  const Webcam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.camera_alt),
    );
  }
}
