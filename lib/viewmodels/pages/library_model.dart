import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/models/track.dart';
import 'package:music_player/repository/music_repo.dart';

class LibraryModel extends ChangeNotifier {
  List<SongInfo> _songsInDevice = [];
  List<SongInfo> get songsInDevice => _songsInDevice;
  void _fetchSongsInDevice() async {
    _songsInDevice = await MusicRepository.fetchSongsInDevice();
    notifyListeners();
  }

  List<ArtistInfo> _artistsInDevice = [];
  List<ArtistInfo> get artistsInDevice => _artistsInDevice;
  void _fetchArtistsInDevice() async {
    _artistsInDevice = await MusicRepository.fetchArtistsInDevice();
    notifyListeners();
  }

  List<AlbumInfo> _albumsInDevice = [];
  List<AlbumInfo> get albumsInDevice => _albumsInDevice;
  void _fetchAlbumsInDevice() async {
    _albumsInDevice = await MusicRepository.fetchAlbumsInDevice();
    notifyListeners();
  }

  List<GenreInfo> _genresInDevice = [];
  List<GenreInfo> get genresInDevice => _genresInDevice;
  void _fetchGenresInDevice() async {
    _genresInDevice = await MusicRepository.fetchGenresInDevice();
    notifyListeners();
  }

  List<Track> _searchResults;
  List<Track> get searchResults => _searchResults;
  set searchResults(List<Track> results) {
    _searchResults = results;
    notifyListeners();
  }

  Future<void> refreshLibrary() async {
    await _fetchSongsInDevice();
    await _fetchArtistsInDevice();
    await _fetchAlbumsInDevice();
    await _fetchGenresInDevice();
  }

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
