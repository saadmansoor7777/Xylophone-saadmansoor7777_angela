import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

   void playSound (int songNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$songNum.wav'));
  }

  Expanded buildKey({required int songNum, required Color colors}){
    return Expanded(
      child: Container(
        color:  colors ,
        child: TextButton(
          child: Text('   '),
          onPressed: () {
            playSound(songNum);
          },
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(colors: Colors.red, songNum: 1),
              buildKey(colors: Colors.green, songNum: 2),
              buildKey(colors: Colors.blue, songNum: 3),
              buildKey(colors: Colors.yellow, songNum: 4),
              buildKey(colors: Colors.purple, songNum: 5),
              buildKey(colors: Colors.cyan, songNum: 6),
          Expanded(
            child: Container(
              color:  Colors.white ,
              child: TextButton(
                child: Text('   '),
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource('music1_ib_puppet.mp3'));
                },
              ),
            ),
          ),

            ],
          ),
        ),
      ),
    );
  }
}

