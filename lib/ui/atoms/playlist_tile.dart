import 'package:flutter/material.dart';
import 'package:music_player/util/strings.dart';

class PlaylistTile extends StatefulWidget {
  PlaylistTileState createState() => PlaylistTileState();
}

class PlaylistTileState extends State<PlaylistTile> {
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Image.asset('lib/images/four.jpg'),
          Image.asset('lib/images/three.jpg'),
          Image.asset('lib/images/map.jpg'),
          Image.asset('lib/images/one.jpg'),
          Image.asset('lib/images/two.jpg'),
        ],
      ),
      title: Text(
        '99.9',
        style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        '42 tracks',
        style: TextStyle(
          fontSize: 12.0,
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(ROUTE_PLAYLIST_PAGE);
      },
    );
  }
}
