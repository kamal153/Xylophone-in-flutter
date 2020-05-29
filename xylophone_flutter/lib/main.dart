import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatelessWidget {

  void playSound(int sNum)
  {
    final audioPlayer =AudioCache();
    audioPlayer.play('note$sNum.wav');
  }

  Widget buildKey(Color color,int soundNum )
  {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          playSound(soundNum);
        },
        color: color,
      ),
    ) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black ,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(Colors.red,1),
            buildKey(Colors.orange,2) ,
            buildKey(Colors.yellow,3) ,
            buildKey(Colors.green,4) ,
            buildKey(Colors.teal,5) ,
            buildKey(Colors.blue,6) ,
            buildKey(Colors.purple,7) ,
          ],
        ),
      ),
    );
  }
}


