import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:music_player/audio_module/audio_player.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

class TracksScreenBloc extends ChangeNotifier {
  var _songs = <String>[
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
  List<String> get songs => _songs;

  List<TrackListTile> getTrackTiles() => List.generate(
        songs.length,
        (index) => TrackListTile(
          thumbnail: Icon(Icons.music_note_rounded),
          title: songs[index],
          subtitle: 'Pyro The Rapper',
          onTap: () {
            //playLilDurk();
          },
        ),
      );

  Future<void> playLilDurk() async {
    try {
      await AudioPlayer.player.open(
        Audio("lib/assets/audio/248.mp3"),
      );
      await AudioPlayer.player.play();
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  Future<void> stopPlayback() async {
    try {
      await AudioPlayer.player.stop();
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
