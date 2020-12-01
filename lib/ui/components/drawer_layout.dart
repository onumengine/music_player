import 'package:flutter/material.dart';
import '../screens/settings/settings_screen.dart';

class DrawerLayout extends StatelessWidget {
  final int _chartPosition = 1;

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                Expanded(
                  child: Image.asset('lib/images/four.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  child: Text(
                    'ONUM\'S MUSIC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
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
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Equalizer'),
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
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
