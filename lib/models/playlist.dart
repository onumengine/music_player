import 'package:music_player/models/song.dart';

class Playlist {
  List<Song> tracks;
  String title;

  addTrack(Song track) {
    tracks.add(track);
  }

  removeTrack(Song track) {
    tracks.remove(track);
  }

  bool playlistIsEmpty() {
    return tracks.isEmpty;
  }
}
