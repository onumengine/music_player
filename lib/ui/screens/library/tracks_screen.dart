import 'package:flutter/material.dart';
import 'package:music_player/ui/components/shuffle_tile.dart';
import 'package:music_player/ui/components/track_listtile.dart';

class TracksScreen extends StatefulWidget {
  final Widget thumbnail;

  const TracksScreen({this.thumbnail = const Icon(Icons.music_note_rounded)});
  TracksScreenState createState() =>
      TracksScreenState(stateThumbnail: this.thumbnail);
}

class TracksScreenState extends State<TracksScreen> {
  final Widget stateThumbnail;

  TracksScreenState({this.stateThumbnail});

  var songs = <String>[
    'Panic Attack',
    'Naija Boy',
    'The Other Day',
    'Dun Trip',
    'Opposites Attract',
    'Bittersweet dream',
    'I Left You This Note',
    'Chidinma Song',
    'Ebiere',
    'Way Too Strong',
  ];

  List<TrackListTile> getTrackTiles() => List.generate(
        songs.length,
        (index) => TrackListTile(
          thumbnail: this.stateThumbnail,
          title: Text(songs[index]),
          subtitle: Text(
            'Pyro The Rapper',
            style: TextStyle(fontSize: 11.0),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/now_playing_screen');
          },
        ),
      );

  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  ShuffleTile(),
                  ...getTrackTiles(),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
