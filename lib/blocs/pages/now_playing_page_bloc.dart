import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/models/song.dart';
import 'package:music_player/util/strings.dart';

class NowPlayingBloc extends ChangeNotifier {
  final _platformChannel = MethodChannel(METHOD_CHANNEL_MUSIC_LIBRARY);

  String _currentlyPlayingTrackTitle = '<unknown>';
  String get currentlyPlayingTrackTitle => _currentlyPlayingTrackTitle;
  set currentlyPlayingTrackTitle(String currentTrack) {
    _currentlyPlayingTrackTitle = currentTrack;
    notifyListeners();
  }

  String _currentlyPlayingTrackArtist = '<unknown>';
  String get currentlyPlayingTrackArtist => _currentlyPlayingTrackArtist;
  set currentlyPlayingTrackArtist(String currentArtist) {
    _currentlyPlayingTrackArtist = currentArtist;
    notifyListeners();
  }

  String _currentlyPlayingTrackAlbum = '<unknown>';
  String get currentlyPlayingTrackAlbum => _currentlyPlayingTrackAlbum;
  set currentlyPlayingTrackAlbum(String currentAlbum) {
    _currentlyPlayingTrackAlbum = currentAlbum;
    notifyListeners();
  }

  Image _currentlyPlayingAlbumArt;
  Image get currentlyPlayingAlbumArt => _currentlyPlayingAlbumArt;
  set currentlyPlayingAlbumArt(Image currentImage) {
    _currentlyPlayingAlbumArt = currentImage;
    notifyListeners();
  }

  DateTime _currentlyPlayingTrackDuration;
  DateTime get currentlyPlayingTrackDuration => _currentlyPlayingTrackDuration;
  set currentlyPlayingTrackDuration(DateTime currentTrackDuration) {
    _currentlyPlayingTrackDuration = currentTrackDuration;
    notifyListeners();
  }

  DateTime _currentlyPlayingElapsedTime;
  DateTime get currentlyPlayingElapsedTime => _currentlyPlayingElapsedTime;
  set currentlyPlayingElapsedTime(DateTime elapsedTime) {
    _currentlyPlayingElapsedTime = elapsedTime;
    notifyListeners();
  }

  double _trackProgress = 0.0;
  double get trackProgress => _trackProgress;
  set trackProgress(double value) {
    _trackProgress = value;
    notifyListeners();
  }

  int _currentlyPlayingTrackIndex;
  int get currentlyPlayingTrackIndex => _currentlyPlayingTrackIndex;
  set currentlyPlayingTrackIndex(int currentIndex) {
    _currentlyPlayingTrackIndex = currentIndex;
    notifyListeners();
  }

  int _songsInCurrentPlaylist;
  int get songsInCurrentPlaylist => _songsInCurrentPlaylist;
  set songsInCurrentPlaylist(int totalSongs) {
    _songsInCurrentPlaylist = totalSongs;
    notifyListeners();
  }

  List<Song> _musicLibrary;
  List<Song> get musicLibrary => _musicLibrary;
  set musicLibrary(List<Song> updatedLibrary) {
    _musicLibrary = updatedLibrary;
    notifyListeners();
  }

  showSongActionsDialog() {}

  openArtistPage(BuildContext context) {
    Navigator.of(context).pushNamed('/artist_page');
  }

  openEqualizerPage(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, '/equalizer_page');
  }

  openAlbumPage(BuildContext context) {
    Navigator.of(context).pushNamed('/album_page');
  }

  goToPreviousSong() {}

  pausePlayback() {}

  resumePlayback() {}

  goToNextSong() {}

  Future<void> getMusicLibrary() async {
    List songs;
    try {
      songs = await _platformChannel.invokeMethod('getMusicLibrary');

      /// var musicLibrary = songs.map((element) {Song(element.title, element.artist, etc)});
      /// return musicLibrary;
    } on PlatformException catch (e) {
      print(e.message);
    }
  }

  stopPlaying(AssetsAudioPlayer player) async {
    await player.stop();
  }
}
