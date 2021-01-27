import 'package:flutter/material.dart';
import 'package:music_player/ui/organisms/genre_page_dialog.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/artists_screen.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';

class GenrePage extends StatefulWidget {
  GenrePageState createState() => GenrePageState();
}

class GenrePageState extends State<GenrePage> {
  void displayDialog(Widget dialog) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black87),
          title: Text(
            'Hip-hop',
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu_rounded),
              onPressed: () {
                displayDialog(GenrePageDialog());
              },
            ),
          ],
          bottom: TabBar(
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black45,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: <Tab>[
              Tab(
                text: 'TRACKS',
              ),
              Tab(
                text: 'ALBUMS',
              ),
              Tab(
                text: 'ARTISTS',
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              TracksScreen(),
              AlbumsScreen(),
              ArtistsScreen(),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 50,
          child: NowPlayingTile(),
        ),
      ),
    );
  }
}
