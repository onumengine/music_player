import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';
import 'package:music_player/ui/organisms/drawer_layout.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/artists_screen.dart';
import 'package:music_player/ui/screens/library/genres_screen.dart';

class LibraryPage extends StatefulWidget {
  @override
  LibraryPageState createState() => LibraryPageState();
}

class LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black45),
          actionsIconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 1.0,
          title: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black45,
            isScrollable: true,
            labelStyle: Theme.of(context).textTheme.headline1,
            unselectedLabelStyle: Theme.of(context).textTheme.headline2,
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
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              TracksScreen(),
              ArtistsScreen(),
              AlbumsScreen(),
              GenresScreen(),
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
