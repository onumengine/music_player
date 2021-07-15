import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TracksScreenBloc extends ChangeNotifier {
  var _player;

  Future<void> playLilDurk() async {
    try {
      _player = await AudioCache().play("audio/248.mp3");
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  Future<void> stopPlayback() async {
    try {
      await _player.stop();
    } on Exception catch (e) {
      print(e.toString());
    }
  }
}
