import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';
import 'package:music_player/ui/screens/playlists/favorites_screen.dart';
import 'package:music_player/ui/screens/playlists/most_played_screen.dart';
import 'package:music_player/ui/screens/playlists/playlists_screen.dart';
import 'package:music_player/ui/screens/playlists/recently_added_screen.dart';

class PlaylistsHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              isScrollable: true,
              labelColor: Colors.black54,
              unselectedLabelColor: Colors.black12,
              tabs: <Tab>[
                Tab(
                  text: 'PLAYLISTS',
                ),
                Tab(
                  text: 'FAVORITES',
                ),
                Tab(
                  text: 'RECENTLY ADDED',
                ),
                Tab(
                  text: 'MOST PLAYED',
                ),
                Tab(
                  text: 'RECENTLY PLAYED',
                ),
              ],
            ),
            actions: <IconButton>[
              IconButton(
                icon: Icon(Icons.search_rounded),
                onPressed: () {
                  print(this.hashCode);
                },
              ),
            ],
          ),
          body: TabBarView(
            children: <Widget>[
              PlaylistsScreen(),
              FavoritesScreen(),
              RecentlyAddedScreen(),
              MostPlayedScreen(),
              TracksScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
