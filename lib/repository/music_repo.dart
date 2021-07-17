import 'package:flutter_audio_query/flutter_audio_query.dart';

class MusicRepository {
  static Future<List<SongInfo>> fetchSongsInDevice() async {
    try {
      List<SongInfo> allSongsInDevice = await FlutterAudioQuery().getSongs();
      return allSongsInDevice;
    } on Exception catch (e) {
      print("MUSIC FETCH ENDED WITH AN EXCEPTION: \n$e");
    }
  }

  static Future<List<ArtistInfo>> fetchArtistsInDevice() async {
    try {
      List<ArtistInfo> allArtistsInDevice =
          await FlutterAudioQuery().getArtists();
      return allArtistsInDevice;
    } on Exception catch (e) {
      print("ARTIST FETCH ENDED WITH THIS EXCEPTION: \n$e");
    }
  }

  static Future<List<AlbumInfo>> fetchAlbumsInDevice() async {
    try {
      List<AlbumInfo> allAlbumsInDevice = await FlutterAudioQuery().getAlbums();
      return allAlbumsInDevice;
    } on Exception catch (e) {
      print("ARTIST FETCH ENDED WITH THIS EXCEPTION: \n$e");
    }
  }

  static Future<List<GenreInfo>> fetchGenresInDevice() async {
    try {
      List<GenreInfo> allGenresInDevice = await FlutterAudioQuery().getGenres();
      return allGenresInDevice;
    } on Exception catch (e) {
      print("ARTIST FETCH ENDED WITH THIS EXCEPTION: \n$e");
    }
  }

  static Future<dynamic> getAlbumsFromGenre(genreName) async {
    try {
      dynamic albumsInGenre =
          await FlutterAudioQuery().getAlbumsFromGenre(genre: genreName);
      return albumsInGenre;
    } on Exception catch (e) {
      print("FETCHING ALBUMS ENDED IN THIS EXCPETION: \n$e");
    }
  }
}
