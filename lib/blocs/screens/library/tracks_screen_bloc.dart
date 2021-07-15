import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/repository/music_repo.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

class TracksScreenBloc extends ChangeNotifier {
  var _player;

  List<SongInfo> _songsInDevice;
  List<SongInfo> get songsInDevice => _songsInDevice;
  void fetchSongsInDevice() async {
    _songsInDevice = await MusicRepository.fetchSongsInDevice();
    notifyListeners();
  }

  List<ArtistInfo> _artistsInDevice;
  List<ArtistInfo> get artistsInDevice => _artistsInDevice;
  void fetchArtistsInDevice() async {
    _artistsInDevice = await MusicRepository.fetchArtistsInDevice();
    notifyListeners();
  }

  List<AlbumInfo> _albumsInDevice;
  List<AlbumInfo> get albumsInDevice => _albumsInDevice;
  void fetchAlbumsInDevice() async {
    _albumsInDevice = await MusicRepository.fetchAlbumsInDevice();
    notifyListeners();
  }

  List<GenreInfo> _genresInDevice;
  List<GenreInfo> get genresInDevice => _genresInDevice;
  void fetchGenresInDevice() async {
    _genresInDevice = await MusicRepository.fetchGenresInDevice();
    notifyListeners();
  }

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
