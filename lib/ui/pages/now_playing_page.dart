import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/now_playing/current_playlist_screen.dart';
import 'package:music_player/ui/screens/now_playing/now_playing_screen.dart';

class NowPlayingPage extends StatefulWidget {
  NowPlayingPageState createState() => NowPlayingPageState();
}

class NowPlayingPageState extends State<NowPlayingPage> {

  final _controller = PageController(
    initialPage: 0,
  );

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: _controller,
          children: <Widget>[
            NowPlayingScreen(),
            CurrentPlaylistScreen(),
          ],
        ),
      ),
    );
  }
}
