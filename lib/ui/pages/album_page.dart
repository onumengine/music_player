import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/album_meta_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';

enum AlbumActions {
  sortAlbumTrackNumber,
  sortAZ,
  sortZA,
  sortDA,
  sortArtistAZ,
  sortArtistZA,
  sortDuration,
  sortFilePath,
  sortYearAscending,
  sortYearDescending
}

class AlbumPage extends StatefulWidget {
  AlbumPageState createState() => AlbumPageState();
}

class AlbumPageState extends State<AlbumPage> {
  var songs = <String>[
    'Panic Attack',
    'Naija Boy',
    'The Other Day',
    'Dun Trip',
    'Opposites Attract',
    'Bittersweet dream',
    'I Left You This Note',
    'Chidinma Song',
    'Ebiere',
    'Way Too Strong',
  ];

  List<TrackListTile> getTrackTiles() => List.generate(
        songs.length,
        (index) => TrackListTile(
          thumbnail: Text('${index + 1}'),
          title: songs[index],
          subtitle: 'Pyro The Rapper',
          onTap: () {
            Navigator.of(context).pushNamed('/now_playing_page');
          },
        ),
      );

  Widget build(BuildContext context) {
    const Key metaKey = ValueKey('meta-sliver-list');
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              excludeHeaderSemantics: true,
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Image.asset(
                      'lib/assets/images/3.png',
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                      bottom: 30,
                      right: 30,
                      child: FloatingActionButton(
                        child: Icon(Icons.shuffle_rounded),
                        onPressed: null,
                      ),
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                PopupMenuButton(
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuItem<AlbumActions>>[
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortAlbumTrackNumber,
                      child: Text('Sort Album Track number'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortAZ,
                      child: Text('Sort A-Z'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortZA,
                      child: Text('Sort Z-A'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortDA,
                      child: Text('Sort Date Added'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortArtistAZ,
                      child: Text('Sort Artist A-Z'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortArtistZA,
                      child: Text('Sort Artist Z-A'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortDuration,
                      child: Text('Sort Duration'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortFilePath,
                      child: Text('Sort File Path'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortYearAscending,
                      child: Text('Sort Year Ascending'),
                    ),
                    PopupMenuItem<AlbumActions>(
                      value: AlbumActions.sortYearDescending,
                      child: Text('Sort Year Descending'),
                    ),
                  ],
                )
              ],
            ),
            SliverList(
              key: metaKey,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      AlbumMetaTile(),
                      ...getTrackTiles(),
                      FillerTile(),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 50,
        child: NowPlayingTile(),
      ),
    );
  }
}
