import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';
import 'package:music_player/viewmodels/pages/artist_model.dart';
import 'package:provider/provider.dart';

class ArtistPage extends StatefulWidget {
  final String artistName, artistID;

  ArtistPage({this.artistName, this.artistID});

  ArtistPageState createState() => ArtistPageState();
}

class ArtistPageState extends State<ArtistPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Consumer<ArtistModel>(builder: (context, model, child) {
      if (model.hasBeenInitialized) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            body: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 200.0,
                  automaticallyImplyLeading: false,
                  title: Text(model.artistName),
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset('lib/assets/images/3.png',
                        fit: BoxFit.fill),
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
                      AlbumsScreen(
                        albums: model.albumsByArtist,
                      ),
                      TracksScreen(
                        songs: model.songsByArtist,
                      ),
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
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
