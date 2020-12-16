import 'package:flutter/material.dart';
import 'package:music_player/main.dart';
import 'package:music_player/ui/pages/album_page.dart';
import 'package:music_player/ui/pages/equalizer_page.dart';
import 'package:music_player/ui/pages/genre_page.dart';
import 'package:music_player/ui/pages/now_playing_page.dart';
import 'package:music_player/ui/pages/playlist_page.dart';
import 'package:music_player/ui/pages/playlists_home_page.dart';
import 'package:music_player/ui/pages/settings_page.dart';
import 'package:music_player/ui/pages/artist_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case '/playlists':
        return MaterialPageRoute(builder: (context) => PlaylistsHomePage());
      case '/settings':
        return MaterialPageRoute(builder: (context) => SettingsPage());
      case '/artist_page':
        return MaterialPageRoute(builder: (context) => ArtistPage());
      case '/album_page':
        return MaterialPageRoute(builder: (context) => AlbumPage());
      case '/now_playing_page':
        return MaterialPageRoute(builder: (context) => NowPlayingPage());
      case '/genre_page':
        return MaterialPageRoute(builder: (context) => GenrePage());
      case '/playlist_page':
        return MaterialPageRoute(builder: (context) => PlaylistPage());
      case '/equalizer_page':
        return MaterialPageRoute(builder: (context) => EqualizerPage());
    }
  }
}
