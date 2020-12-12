import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class TracksScreen extends StatefulWidget {
  final Widget thumbnail;

  const TracksScreen({this.thumbnail = const Icon(Icons.music_note_rounded)});
  TracksScreenState createState() =>
      TracksScreenState(stateThumbnail: this.thumbnail);
}

class TracksScreenState extends State<TracksScreen> {
  final Widget stateThumbnail;
  final audioPlayer = AssetsAudioPlayer();

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

  Future<void> playLilDurk() async {
    try {
      await audioPlayer.open(
        Audio("lib/assets/audio/248.mp3"),
      );
      await audioPlayer.play();
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  List<TrackListTile> getTrackTiles() => List.generate(
        songs.length,
        (index) => TrackListTile(
          thumbnail: this.stateThumbnail,
          title: songs[index],
          subtitle: 'Pyro The Rapper',
          onTap: () {
            playLilDurk();
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
