import 'package:flutter/material.dart';

class DrawerLayout extends StatelessWidget {
  final int _chartPosition = 1;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Stack(
                fit: StackFit.expand,
                alignment: AlignmentDirectional.bottomCenter,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'lib/assets/images/nfx1.png',
                    ),
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
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              title: Text('Playlists'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/playlists');
              },
            ),
            ListTile(
              title: Text('Equalizer'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed('/equalizer_page');
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed('/settings');
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
      ),
    );
  }
}
