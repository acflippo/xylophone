import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNum, String note}) {
    return Expanded(
      child: FlatButton(
        color:color,
        onPressed: () {
          playSound(soundNum);
        },
        child: Text (
          "$note",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    ) ;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, soundNum: 1, note: 'C'),
              buildKey(color: Colors.orange, soundNum: 2, note: 'D'),
              buildKey(color: Colors.yellow, soundNum: 3, note: 'E'),
              buildKey(color: Colors.green, soundNum: 4, note: 'F'),
              buildKey(color: Colors.teal, soundNum: 5, note: 'G'),
              buildKey(color: Colors.blue, soundNum: 6, note: 'A'),
              buildKey(color: Colors.purple, soundNum: 7, note: 'B'),
            ],
          ),
        ),
      ),
    );
  }
}