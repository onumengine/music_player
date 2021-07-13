import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/util/strings.dart';

class NowPlayingTile extends StatefulWidget {
  NowPlayingTileState createState() => NowPlayingTileState();
}

class NowPlayingTileState extends State<NowPlayingTile> {
  Widget build(BuildContext context) {
    return TrackListTile(
      thumbnail: Image.asset('lib/assets/images/3.png'),
      title: 'Forever',
      subtitle: 'Justin Bieber',
      trailing: Icon(Icons.play_arrow_rounded),
      onTap: () {
        Navigator.of(context).pushNamed(ROUTE_NOW_PLAYING_PAGE);
      },
    );
  }
}
