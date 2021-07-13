import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';
import 'package:music_player/ui/organisms/drawer_layout.dart';
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
            elevation: 1.0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black26),
            actionsIconTheme: IconThemeData(color: Colors.black87),
            title: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              labelColor: Colors.black87,
              unselectedLabelColor: Colors.black26,
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
          drawer: DrawerLayout(),
          body: TabBarView(
            children: <Widget>[
              PlaylistsScreen(),
              FavoritesScreen(),
              RecentlyAddedScreen(),
              MostPlayedScreen(),
              TracksScreen(),
            ],
          ),
          bottomSheet: Container(
            height: 50.0,
            child: NowPlayingTile(),
          ),
        ),
      ),
    );
  }
}
