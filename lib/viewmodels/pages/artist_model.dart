import 'package:flutter/foundation.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

class ArtistModel extends ChangeNotifier {
  String _artistName;
  String get artistName => _artistName;
  set artistName(String name) {
    _artistName = name;
    notifyListeners();
  }

  List<AlbumInfo> _albumsByArtist;
  List<AlbumInfo> get albumsByArtist => _albumsByArtist;
  set albumsByArtist(List<AlbumInfo> albums) {
    _albumsByArtist = albums;
    notifyListeners();
  }

  List<SongInfo> _songsByArtist;
  List<SongInfo> get songsByArtist => _songsByArtist;
  set songsByArtist(List<SongInfo> songs) {
    _songsByArtist = songs;
    notifyListeners();
  }

  void initializeModel() {}
}
