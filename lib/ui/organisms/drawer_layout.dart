import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/util/strings.dart';

class DrawerLayout extends StatelessWidget {
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
                    ROUTE_LIBRARY_PAGE, (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              title: Text('Playlists'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(ROUTE_PLAYLISTS_HOME_PAGE);
              },
            ),
            ListTile(
              title: Text('Equalizer'),
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).pushNamed(ROUTE_EQUALIZER_PAGE);
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed(ROUTE_SETTINGS_PAGE);
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
            TrackListTile(
              thumbnail: Icon(
                Icons.music_note_rounded,
              ),
              title: 'Panic Attack',
              subtitle: 'Pyro The Rapper',
            ),
            TrackListTile(
              thumbnail: Icon(
                Icons.music_note_rounded,
              ),
              title: 'Naija Boy',
              subtitle: 'Pyro The Rapper',
            ),
            TrackListTile(
              thumbnail: Icon(
                Icons.music_note_rounded,
              ),
              title: 'The Other Day',
              subtitle: 'Pyro The Rapper',
            ),
            TrackListTile(
              thumbnail: Icon(
                Icons.music_note_rounded,
              ),
              title: 'Dun Trip',
              subtitle: 'Pyro The Rapper',
            ),
            TrackListTile(
              thumbnail: Icon(
                Icons.music_note_rounded,
              ),
              title: 'Bittersweet Dream',
              subtitle: 'Pyro The Rapper',
            ),
          ],
        ),
      ),
    );
  }
}
