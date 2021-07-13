import 'package:flutter/material.dart';
import 'package:music_player/audio_module/audio_player.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

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

class ShuffleTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return TrackListTile(
      thumbnail: Icon(Icons.shuffle_rounded),
      title: 'Shuffle Play',
      subtitle: 'All Tracks',
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
      onTap: () {
        AudioPlayer.player.stop();
      },
    );
  }
}
