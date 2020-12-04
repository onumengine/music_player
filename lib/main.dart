import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/library/artist_page.dart';
import 'package:music_player/ui/screens/library/album_page.dart';
import 'package:music_player/ui/screens/library/genre_page.dart';
import 'package:music_player/ui/screens/library/now_playing_screen.dart';
import 'package:music_player/ui/screens/playlists/playlists_home_screen.dart';
import 'ui/components/drawer_layout.dart';
import 'ui/screens/library/tracks_screen.dart';
import 'ui/screens/library/albums_screen.dart';
import 'ui/screens/library/artists_screen.dart';
import 'ui/screens/library/genres_screen.dart';
import 'ui/screens/settings/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHomePage(),
        '/playlists': (context) => PlaylistsHome(),
        '/settings': (context) => SettingsScreen(),
        '/artist_page': (context) => ArtistPage(),
        '/album_page': (context) => AlbumPage(),
        '/now_playing_screen': (context) => NowPlayingScreen(),
        '/genre_page': (context) => GenrePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: <Tab>[
              Tab(
                text: 'TRACKS',
              ),
              Tab(
                text: 'ARTISTS',
              ),
              Tab(
                text: 'ALBUMS',
              ),
              Tab(
                text: 'GENRES',
              ),
            ],
          ),
          actions: <IconButton>[
            IconButton(
              icon: Icon(Icons.search_rounded),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Whatchu looking for?'),
                  ),
                );
              },
            ),
          ],
        ),
        drawer: DrawerLayout(),
        body: TabBarView(
          children: <Widget>[
            TracksScreen(),
            ArtistsScreen(),
            AlbumsScreen(),
            GenresScreen(),
          ],
        ),
      ),
    );
  }
}
