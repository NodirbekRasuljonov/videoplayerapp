import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MyMusicPlayerPage extends StatefulWidget {
  const MyMusicPlayerPage({super.key});

  @override
  State<MyMusicPlayerPage> createState() => _MyMusicPlayerPageState();
}

class _MyMusicPlayerPageState extends State<MyMusicPlayerPage> {
  final player = AudioPlayer();
  String musictext = "Audio";
  String nomusic = "No Music";
  bool ispause = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AudioPlayer App")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                ispause = !ispause;
                setState(() {});
                ispause
                    ? player.play(AssetSource('music.mp3'))
                    : player.pause();
              },
              child: Text(ispause?"Playing":"Paused"),
            ),
            
           
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    player.dispose();
    super.dispose();
  }
}
