import 'package:flutter/material.dart';

class DrawerLayout extends StatelessWidget {
  final int _chartPosition = 1;

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('MUSIC'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              'NAVIGATION',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Text('Library'),
          ),
          ListTile(
            title: Text('Playlists'),
          ),
          ListTile(
            title: Text('Equalizer'),
          ),
          ListTile(
            title: Text('Settings'),
          ),
          ListTile(
            title: Text('Audio Library'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Text(
              'MOST PLAYED',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
            ),
            title: Text('Most played music number $_chartPosition'),
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
            ),
            title: Text('Most played music number ${_chartPosition + 1}'),
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
            ),
            title: Text('Most played music number ${_chartPosition + 2}'),
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
            ),
            title: Text('Most played music number ${_chartPosition + 3}'),
          ),
          ListTile(
            leading: Icon(
              Icons.music_note_rounded,
            ),
            title: Text('Most played music number ${_chartPosition + 4}'),
          ),
        ],
      ),
    );
  }
}
