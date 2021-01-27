import 'package:flutter/material.dart';

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
              child: Text(
                'Play',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
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
                padding: const EdgeInsets.only(top: 16.0),
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
                padding: const EdgeInsets.only(top: 16.0),
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
                padding: const EdgeInsets.only(top: 16.0),
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
                print('YOU TAPPED PLAY');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
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
                padding: const EdgeInsets.only(top: 16.0),
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
}
