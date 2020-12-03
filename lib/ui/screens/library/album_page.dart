import 'package:flutter/material.dart';
import 'package:music_player/ui/components/album_meta_tile.dart';
import 'package:music_player/ui/components/track_listtile.dart';

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

  List<String> loadTracks() {
    return this.songs;
  }

  List<TrackListTile> trackTiles() => List<TrackListTile>.generate(
        10,
        (index) => TrackListTile(
          thumbnail: Text('${index + 1}'),
          title: Text(songs[index]),
          subtitle: Text(
            'Pyro The Rapper',
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/now_playing_screen');
          },
        ),
      );

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Image.asset(
                      'lib/images/four.jpg',
                      fit: BoxFit.cover,
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
                      child: Text('SOrt Artist Z-A'),
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
            SliverFillRemaining(
              child: Column(
                children: <Widget>[
                  AlbumMetaTile(),
                  ...trackTiles(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
