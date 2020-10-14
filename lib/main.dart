import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
//here we need {} bcoz we have named parameter
  Expanded buildKey({Color color,int soundNumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        //child: Text('Click me'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color:Colors.red,soundNumber:1),
              buildKey(color:Colors.orange,soundNumber:2),
              buildKey(color:Colors.yellow,soundNumber:3),
              buildKey(color:Colors.green,soundNumber:4),
              buildKey(color:Colors.teal,soundNumber:5),
              buildKey(color:Colors.blue,soundNumber:6),
              buildKey(color:Colors.purple,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
