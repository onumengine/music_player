import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/playlist_tile.dart';

class PlaylistsScreen extends StatefulWidget {
  PlaylistsScreenState createState() => PlaylistsScreenState();
}

class PlaylistsScreenState extends State<PlaylistsScreen> {
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: List.generate(
            4,
            (index) => PlaylistTile(),
          ),
        ),
        FlatButton(
          child: Text(
            'CREATE EMPTY PLAYLIST',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          onPressed: () {
            print('yeah baby');
          },
        ),
        FlatButton(
          child: Text(
            'IMPORT',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          onPressed: () {
            print('Yeha babe');
          },
        ),
        FillerTile(),
      ],
    );
  }
}
