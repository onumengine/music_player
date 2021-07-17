import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';

class ArtistPage extends StatefulWidget {
  ArtistPageState createState() => ArtistPageState();
}

class ArtistPageState extends State<ArtistPage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              automaticallyImplyLeading: false,
              title: Text('Pyro The Rapper'),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background:
                    Image.asset('lib/assets/images/3.png', fit: BoxFit.fill),
              ),
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: <Tab>[
                  Tab(text: 'ALBUMS'),
                  //Tab(text: 'BIO'),
                  Tab(text: 'TRACKS'),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: <Widget>[
                  AlbumsScreen(),
                  //Center(child: Text('No internet connection')),
                  TracksScreen(),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 50.0,
          child: NowPlayingTile(),
        ),
      ),
    );
  }
}
