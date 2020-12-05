import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';

class ArtistPage extends StatefulWidget {
  ArtistPageState createState() => ArtistPageState();
}

class ArtistPageState extends State<ArtistPage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              automaticallyImplyLeading: false,
              title: Text('Pyro The Rapper'),
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset('lib/images/map.jpg', fit: BoxFit.fill),
              ),
              bottom: TabBar(
                tabs: <Tab>[
                  Tab(text: 'ALBUMS'),
                  Tab(text: 'BIO'),
                  Tab(text: 'TRACKS'),
                ],
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: <Widget>[
                  AlbumsScreen(),
                  Center(
                    child: Text('No internet connection'),
                  ),
                  TracksScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
