import 'package:flutter/material.dart';
import 'package:music_player/ui/components/track_listtile.dart';
import 'now_playing_screen.dart';

enum MenuItems {
  refresh,
  sortAZ,
  sortZA,
  sortDA,
  sortAlbumAZ,
  sortAlbumZA,
  sortArtistAZ,
  sortArtistZA,
  sortDuration,
  sortFilePath,
  sortYearAscending,
  sortYearDescending
}

class TracksScreen extends StatefulWidget {
  TracksScreenState createState() => TracksScreenState();
}

class TracksScreenState extends State<TracksScreen> {
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
