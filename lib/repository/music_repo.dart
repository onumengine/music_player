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

  static Future<List<AlbumInfo>> getAlbumsFromGenre(String genreName) async {
    try {
      List<AlbumInfo> albumsInGenre =
          await FlutterAudioQuery().getAlbumsFromGenre(genre: genreName);
      return albumsInGenre;
    } on Exception catch (e) {
      print("FETCHING ALBUMS ENDED IN THIS EXCPETION: \n$e");
    }
  }

  static Future<List<AlbumInfo>> getAlbumsByArtist(String artistName) async {
    try {
      List<AlbumInfo> albumsByArtist =
          await FlutterAudioQuery().getAlbumsFromArtist(artist: artistName);
      return albumsByArtist;
    } on Exception catch (e) {
      print("GETTING ALBUMS BY ARTIST ENDED IN THIS EXCEPTION: \n$e");
    }
  }

  static Future<List<SongInfo>> getSongsByArtist(String artistID) async {
    try {
      List<SongInfo> songsByArtist =
          await FlutterAudioQuery().getSongsFromArtist(artistId: artistID);
      return songsByArtist;
    } on Exception catch (e) {
      print("GETTING ALBUMS BY ARTIST ENDED IN THIS EXCEPTION: \n$e");
    }
  }
}
