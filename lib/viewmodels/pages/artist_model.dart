import 'package:flutter/foundation.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/repository/music_repo.dart';

class ArtistModel extends ChangeNotifier {
  String _artistName;
  String get artistName => _artistName;
  set artistName(String name) {
    _artistName = name;
    notifyListeners();
  }

  List<AlbumInfo> _albumsByArtist;
  List<AlbumInfo> get albumsByArtist => _albumsByArtist;
  void _getAlbumsByArtist(String artistName) async {
    _albumsByArtist = await MusicRepository.getAlbumsByArtist(artistName);
    notifyListeners();
  }

  List<SongInfo> _songsByArtist;
  List<SongInfo> get songsByArtist => _songsByArtist;
  void _getSongsByArtist(String artistID) async {
    _songsByArtist = await MusicRepository.getSongsByArtist(artistID);
    notifyListeners();
  }

  void initializeModel(String artistName, String artistID) async {
    this.artistName = artistName;
    await _getAlbumsByArtist(artistName);
    await _getSongsByArtist(artistID);
  }
}
