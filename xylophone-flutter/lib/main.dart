import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int noteNumber, Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(soundNumber: noteNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(noteNumber: 1, color: Colors.red),
                buildKey(noteNumber: 2, color: Colors.lightBlue),
                buildKey(noteNumber: 3, color: Colors.lightGreen),
                buildKey(noteNumber: 4, color: Colors.brown),
                buildKey(noteNumber: 5, color: Colors.pinkAccent),
                buildKey(noteNumber: 6, color: Colors.amberAccent),
                buildKey(noteNumber: 7, color: Colors.deepOrangeAccent),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
