import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/models/track.dart';
import 'package:music_player/repository/music_repo.dart';

class LibraryPageBloc extends ChangeNotifier {
  var _player;

  List<SongInfo> _songsInDevice = [];
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

  List<Track> _searchResults;
  List<Track> get searchResults => _searchResults;
  set searcResults(List<Track> results) {
    _searchResults = results;
    notifyListeners();
  }

  refreshLibrary() {}

  sortTracksAlphabetically() {}

  sortTracksReverseAlphabetically() {}

  sortTracksByDateAdded() {}

  sortAlbumsAlphabetically() {}

  sortAlbumsReverseAlphabetically() {}

  sortArtistsAlphabetically() {}

  sortArtistsReverseAlphabetically() {}

  sortTracksByDuration() {}

  sortTracksByFilePath() {}

  sortTrackYearsInAscendingOrder() {}

  sortTrackYearsInDescendingOrder() {}
}
