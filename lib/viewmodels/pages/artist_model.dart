import 'package:flutter/foundation.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/repository/music_repo.dart';

class ArtistModel extends ChangeNotifier {
  ArtistModel();

  ArtistModel.withArtist({@required artistName, @required artistID}) {
    this.artistName = artistName;
    this.artistID = artistID;
    _initializeModel();
  }

  String _artistName;
  String get artistName => _artistName;
  set artistName(String name) {
    _artistName = name;
    notifyListeners();
  }

  String _artistID;
  String get artistID => _artistID;
  set artistID(String id) {
    _artistID = id;
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

  void _initializeModel() async {
    await _getAlbumsByArtist(artistName);
    await _getSongsByArtist(artistID);
  }

  // bool _hasBeenInitialized = false;
  // bool get hasBeenInitialized => _hasBeenInitialized;
  // set hasBeenInitialized(bool isInitialized) {
  //   if (isInitialized == true) {
  //     _hasBeenInitialized = isInitialized;
  //   } else {
  //     print(
  //         "can assign only a value of true to ArtistModel.hasBeenInitialized");
  //     return;
  //   }
  // }
}
