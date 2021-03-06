import 'package:music_player/models/track.dart';

class Playlist {
  List<Track> tracks;
  String title;

  addTrack(Track track) {
    tracks.add(track);
  }

  removeTrack(Track track) {
    tracks.remove(track);
  }

  bool playlistIsEmpty() {
    return tracks.isEmpty;
  }
}
