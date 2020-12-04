import 'package:flutter/material.dart';
import 'package:music_player/ui/components/shuffle_tile.dart';
import 'package:music_player/ui/components/track_listtile.dart';

class TracksScreen extends StatefulWidget {
  final Widget thumbnail;

  const TracksScreen({this.thumbnail = const Icon(Icons.music_note_rounded)});
  TracksScreenState createState() =>
      TracksScreenState(stateThumbnail: this.thumbnail);
}

class TracksScreenState extends State<TracksScreen> {
  final Widget stateThumbnail;

  TracksScreenState({this.stateThumbnail});

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
          thumbnail: this.stateThumbnail,
          title: Text(songs[index]),
          subtitle: Text(
            'Pyro The Rapper',
            style: TextStyle(fontSize: 11.0),
          ),
          onTap: () {
            Navigator.of(context).pushNamed('/now_playing_screen');
          },
        ),
      );

  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  ShuffleTile(),
                  ...getTrackTiles(),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
/*    return Column(
      children: <Widget>[
        TrackListTile(
          thumbnail: Icon(Icons.shuffle_rounded),
          title: Text('Shuffle Play'),
          subtitle: Text(
            'All Tracks',
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
          trailing: PopupMenuButton<MenuItems>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<MenuItems>>[
              PopupMenuItem<MenuItems>(
                value: MenuItems.refresh,
                child: Text('Refresh Library'),
              ),
              PopupMenuItem<MenuItems>(
                value: MenuItems.sortAZ,
                child: Text('Sort A-Z'),
              ),
              PopupMenuItem(
                value: MenuItems.sortZA,
                child: Text('Sort Z-A'),
              ),
              PopupMenuItem(
                value: MenuItems.sortDA,
                child: Text('Sort Date Added'),
              ),
              PopupMenuItem(
                value: MenuItems.sortAlbumAZ,
                child: Text('Sort Album A-Z'),
              ),
              PopupMenuItem(
                value: MenuItems.sortAlbumZA,
                child: Text('Sort Album Z-A'),
              ),
              PopupMenuItem(
                value: MenuItems.sortArtistAZ,
                child: Text('Sort Artist A-Z'),
              ),
              PopupMenuItem(
                value: MenuItems.sortArtistZA,
                child: Text('Sort Artist Z-A'),
              ),
              PopupMenuItem(
                value: MenuItems.sortDuration,
                child: Text('Sort Duration'),
              ),
              PopupMenuItem(
                value: MenuItems.sortFilePath,
                child: Text('Sort File Path'),
              ),
              PopupMenuItem(
                value: MenuItems.sortYearAscending,
                child: Text('Sort Year Asc'),
              ),
              PopupMenuItem(
                value: MenuItems.sortYearDescending,
                child: Text('Sort Year Desc'),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => TrackListTile(
                thumbnail: Icon(Icons.music_note_rounded),
                title: Text(
                  'I Left You This Note',
                ),
                subtitle: Text(
                  'Pyro The Rapper',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NowPlayingScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    ); */
  }
}
