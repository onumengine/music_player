import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

class MostPlayedTile extends StatelessWidget {
  final String ranking, numberOfPlays;

  MostPlayedTile({this.ranking, this.numberOfPlays});

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(this.ranking),
        TrackListTile(
          thumbnail: Icon(Icons.music_note_rounded),
          title: Text('I Left You This Note'),
          subtitle: Text('Pyro The Rapper'),
        ),
        Text(this.numberOfPlays),
      ],
    );
  }
}
