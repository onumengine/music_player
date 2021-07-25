import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/util/strings.dart';

/// I'll save the following data to preferences on dispose of the
/// [NowPlayingPage]:
/// [currentlyPlayingTrackTitle]
/// [currentlyPlayingQueue]
/// [_trackProgress]
/// This will enable a user to continue from where they stopped
/// anytime they open the app

class NowPlayingModel extends ChangeNotifier {
  bool playbackIsPlaying;

  SongInfo _currentlyPlayingSong;
  SongInfo get currentlyPlayingSong => _currentlyPlayingSong;
  set currentlyPlayingSong(SongInfo song) {
    _currentlyPlayingSong = song;
    notifyListeners();
  }

  List<SongInfo> _currentlyPlayingList;
  List<SongInfo> get currentlyPlayingList => _currentlyPlayingList;
  set currentlyPlayingList(List<SongInfo> list) {
    _currentlyPlayingList = list;
    notifyListeners();
  }

  /// I haven't commented this stub out because this variable is still being
  /// used in the [NowPlayingScreen]
  double _trackProgress = 0.0;
  double get trackProgress => _trackProgress;
  set trackProgress(double value) {
    _trackProgress = value;
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

  showSongActionsDialog() {}

  openArtistPage(BuildContext context) {
    Navigator.of(context).pushNamed(ROUTE_ARTIST_PAGE);
  }

  openAlbumPage(BuildContext context) {
    Navigator.of(context).pushNamed(ROUTE_ALBUM_PAGE);
  }

  goToPreviousSong() {}

  pausePlayback() {}

  resumePlayback() {}

  goToNextSong() {}
}
