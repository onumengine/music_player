import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/artists_screen.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';

class GenrePage extends StatefulWidget {
  GenrePageState createState() => GenrePageState();
}

class GenrePageState extends State<GenrePage> {
  void displayDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Hip-Hop'),
            scrollable: true,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      print('YOU TAPPED PLAY');
                    },
                    child: Text(
                      'Play',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      print('YOU TAPPED PLAY');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Play Next',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      print('YOU TAPPED PLAY');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Queue',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      print('YOU TAPPED PLAY');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Add to Playlist',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      print('YOU TAPPED PLAY');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Edit',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      print('YOU TAPPED PLAY');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        'Add Tracks to Favorites',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [],
          );
        });
  }

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Hip-hop'),
            actions: [
              IconButton(
                icon: Icon(Icons.menu_rounded),
                onPressed: () {
                  displayDialog();
                },
              ),
            ],
            bottom: TabBar(
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
          body: TabBarView(
            children: <Widget>[
              TracksScreen(),
              AlbumsScreen(),
              ArtistsScreen(),
            ],
          )),
    );
  }
}
