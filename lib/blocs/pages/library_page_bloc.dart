import 'package:flutter/material.dart';
import 'package:music_player/models/song.dart';

class LibraryPageBloc extends ChangeNotifier {

  List<String> _allAlbums;
  List<String> get allAlbums => _allAlbums;
  set allAlbums(List<String> albums) {
    _allAlbums = albums;
    notifyListeners();
  }

  List<String> _allArtists;
  List<String> get allArtists => _allArtists;
  set allArtists(List<String> updatedArtists) {
    _allArtists = updatedArtists;
    notifyListeners();
  }

  List<String> _allGenres;
  List<String> get allGenres => _allGenres;
  set allGenres(List<String> genres) {
    _allGenres = genres;
    notifyListeners();
  }

  List<Song> _allTracksInLibrary;
  List<Song> get allTracksInLibrary => _allTracksInLibrary;
  set allTracksInLibrary(List<Song> trackList) {
    _allTracksInLibrary = trackList;
    notifyListeners();
  }

  List<Song> _searchResults;
  List<Song> get searchResults => _searchResults;
  set searcResults(List<Song> results) {
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
