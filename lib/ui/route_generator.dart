import 'package:flutter/material.dart';
import 'package:music_player/ui/pages/album_page.dart';
import 'package:music_player/ui/pages/equalizer_page.dart';
import 'package:music_player/ui/pages/genre_page.dart';
import 'package:music_player/ui/pages/library_page.dart';
import 'package:music_player/ui/pages/now_playing_page.dart';
import 'package:music_player/ui/pages/playlist_page.dart';
import 'package:music_player/ui/pages/playlists_home_page.dart';
import 'package:music_player/ui/pages/settings_page.dart';
import 'package:music_player/ui/pages/artist_page.dart';
import 'package:music_player/util/strings.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_LIBRARY_PAGE:
        return MaterialPageRoute(builder: (context) => LibraryPage());
      case ROUTE_PLAYLISTS_HOME_PAGE:
        return MaterialPageRoute(builder: (context) => PlaylistsHomePage());
      case ROUTE_SETTINGS_PAGE:
        return MaterialPageRoute(builder: (context) => SettingsPage());
      case ROUTE_ARTIST_PAGE:
        final args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => ArtistPage(
            artistID: args["artistID"],
            artistName: args["artistName"],
          ),
        );
      case ROUTE_ALBUM_PAGE:
        return MaterialPageRoute(builder: (context) => AlbumPage());
      case ROUTE_NOW_PLAYING_PAGE:
        return MaterialPageRoute(builder: (context) => NowPlayingPage());
      case ROUTE_GENRE_PAGE:
        return MaterialPageRoute(builder: (context) => GenrePage());
      case ROUTE_PLAYLIST_PAGE:
        return MaterialPageRoute(builder: (context) => PlaylistPage());
      case ROUTE_EQUALIZER_PAGE:
        return MaterialPageRoute(builder: (context) => EqualizerPage());
    }
  }
}
