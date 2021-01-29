import 'package:flutter/material.dart';
import 'package:music_player/ui/organisms/edit_track_dialog.dart';

class TrackActionsDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Hip-Hop'),
      scrollable: true,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  'Play',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Play Next',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Queue',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Add to Favorites',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Album',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Artist',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Add to Playlist',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                showEditTrackDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Edit',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Delete',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Share',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Use as Ringtone',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Add Tracks to Favorites',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [],
    );
  }

  showEditTrackDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return EditTrackDialog();
      },
    );
  }
}
