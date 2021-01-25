import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/models/song.dart';
import 'package:music_player/util/strings.dart';

class NowPlayingBloc extends ChangeNotifier {
  final _platformChannel = MethodChannel(METHOD_CHANNEL_MUSIC_LIBRARY);

  double _trackProgress = 0.0;
  double get trackProgress => _trackProgress;
  set trackProgress(double value) {
    _trackProgress = value;
    notifyListeners();
  }

  List<Song> _musicLibrary;
  List<Song> get musicLibrary => _musicLibrary;
  set musicLibrary(List<Song> updatedLibrary) {
    _musicLibrary = updatedLibrary;
    notifyListeners();
  }

  Future<void> getMusicLibrary() async {
    List songs;
    try {
      songs = await _platformChannel.invokeMethod('getMusicLibrary');

      /// var musicLibrary = songs.map((element) {Song(element.title, element.artist, etc)});
      /// return musicLibrary;
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  stopPlaying(AssetsAudioPlayer player) async {
    await player.stop();
  }
}
