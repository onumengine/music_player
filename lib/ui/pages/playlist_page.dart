import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/molecules/playlist_banner.dart';

enum PlaylistMenu {
  multiSelect,
  sortAZ,
  sortZA,
  sortAlbumTrackNumber,
  sortAlbumArtist,
  sortArtistAZ,
  rename,
  delete,
  removeDuplicates,
}

class PlaylistPage extends StatefulWidget {
  PlaylistPageState createState() => PlaylistPageState();
}

class PlaylistPageState extends State<PlaylistPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Playlist'),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: <Widget>[
                    PlaylistBanner(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 48.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1h 13min',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                              ),
                            ),
                            Text(
                              '20 tracks',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                /* Container(
                  color: Colors.redAccent,
                  
                ), */
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add_rounded),
                  onPressed: () {},
                ),
                PopupMenuButton<PlaylistMenu>(
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuItem<PlaylistMenu>>[
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Multi Select'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Sort A-Z'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Sort Z-A'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Sort Album Track Number'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Sort Album Artist'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Sort Artist A-Z'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Rename'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Delete'),
                    ),
                    PopupMenuItem<PlaylistMenu>(
                      value: PlaylistMenu.multiSelect,
                      child: Text('Remove Duplicates'),
                    ),
                  ],
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ShuffleTile();
                },
                childCount: 1,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return TrackListTile(
                    thumbnail: Icon(Icons.music_note_rounded),
                    title: 'Panic Attack',
                    subtitle: 'Pyro The Rapper',
                    //style: TextStyle(
                    //  fontSize: 11.0,

                    onTap: () {},
                  );
                },
                childCount: 30,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return FillerTile();
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 50.0,
        child: NowPlayingTile(),
      ),
    );
  }
}
