import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xFFABEBC6),
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'AMA - 8 Ball',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Color(0xFF0E6655),
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(
            () {
              ballNumber = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image(
          image: AssetImage('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
