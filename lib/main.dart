import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  AudioCache _audioCache;

  @override
  void initState() {
    super.initState();
    // create this only once
    _audioCache = AudioCache(prefix: "audio/", fixedPlayer: AudioPlayer()..setReleaseMode(ReleaseMode.STOP));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
        title: const Text('button click audio example '),
    ),

    floatingActionButton: Container(
      height: 100.0,
      width: 100.0,
      margin: EdgeInsets.all(100.0),
      decoration: BoxDecoration(
        color: Colors.purpleAccent,
        shape: BoxShape.circle),
      child: InkWell(
        enableFeedback: false,
        onTap: () => _audioCache.play('1.mp3'),
      child: Icon(Icons.mic_rounded,color: Colors.white,size: 60,),


      ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
    );
  }
}