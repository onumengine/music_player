import 'package:flutter/material.dart';
import 'package:music_player/models/playlist.dart';
import 'package:music_player/models/track.dart';

class PlaylistsBloc extends ChangeNotifier {
  List<Playlist> _playlistCollection;
  List<Playlist> get playlistCollection => _playlistCollection;
  set playlistCollection(List<Playlist> playlists) {
    _playlistCollection = playlists;
    notifyListeners();
  }

  List<Track> _favorites;
  List<Track> get favorites => _favorites;
  set favorites(List<Track> updatedFavorites) {
    _favorites = updatedFavorites;
    notifyListeners();
  }

  List<Track> _recentlyAdded;
  List<Track> get recentlyAdded => _recentlyAdded;
  set recentlyAdded(List<Track> recentAdditions) {
    _recentlyAdded = recentAdditions;
    notifyListeners();
  }

  List<Track> _mostPlayed;
  List<Track> get mostPlayed => _mostPlayed;
  set mostPlayed(List<Track> updatedList) {
    _mostPlayed = updatedList;
    notifyListeners();
  }

  Playlist createNewPlaylist(List<Track> tracks) {
    Playlist newPlaylist = Playlist();
    tracks.forEach((track) {
      newPlaylist.addTrack(track);
    });
    return newPlaylist;
  }

  addToPlaylistCollection(Playlist playlist) {
    playlistCollection.add(playlist);
  }

  deletePlaylist(Playlist playlistToBeDeleted) {
    playlistCollection
        .removeWhere((element) => element.title == playlistToBeDeleted.title);
  }
}
