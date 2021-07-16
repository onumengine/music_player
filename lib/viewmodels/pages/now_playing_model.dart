import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_player/models/track.dart';
import 'package:music_player/util/strings.dart';

class NowPlayingModel extends ChangeNotifier {
  bool playbackIsPlaying;

  String _currentlyPlayingTrackTitle = '<unknown>';
  String get currentlyPlayingTrackTitle => _currentlyPlayingTrackTitle;
  set currentlyPlayingTrackTitle(String currentTrack) {
    _currentlyPlayingTrackTitle = currentTrack;
    notifyListeners();
  }

  play(String url) async {
    AudioPlayer audioPlayer = AudioPlayer(playerId: PLAYER_ID);
    AudioPlayer.logEnabled = true;
    int result = await audioPlayer.play(url, isLocal: true);
    if (result == 1) {
      print("PLAYED THE SONG SUCCESSFULLY");
    } else {
      print("PLAYBACK FAILED");
    }
  }

  stop() async {
    AudioPlayer audioPlayer = AudioPlayer(playerId: PLAYER_ID);
    int result = await audioPlayer.pause();
    if (result == 1) {
      print("PAUSED THE SONG SUCCESSFULLY");
    } else {
      print("FAILED TO PAUSE MUSIC");
    }
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

  List<Track> _musicLibrary;
  List<Track> get musicLibrary => _musicLibrary;
  set musicLibrary(List<Track> updatedLibrary) {
    _musicLibrary = updatedLibrary;
    notifyListeners();
  }

  showSongActionsDialog() {}

  openArtistPage(BuildContext context) {
    Navigator.of(context).pushNamed(ROUTE_ARTIST_PAGE);
  }

  openEqualizerPage(BuildContext context) {
    Navigator.pop(context);
    Navigator.pushNamed(context, ROUTE_EQUALIZER_PAGE);
  }

  openAlbumPage(BuildContext context) {
    Navigator.of(context).pushNamed(ROUTE_ALBUM_PAGE);
  }

  goToPreviousSong() {}

  pausePlayback() {}

  resumePlayback() {}

  goToNextSong() {}
}
