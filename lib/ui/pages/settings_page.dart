import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            AppBar(
              iconTheme: IconThemeData(color: Colors.black87),
              backgroundColor: Colors.white,
              automaticallyImplyLeading: true,
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade300,
                ),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(
                Icons.brush_rounded,
              ),
              title: Text('Styling'),
              subtitle: Text(
                'Colors, Font, Animations',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.play_circle_filled_rounded,
              ),
              title: Text('Now Playing'),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.image_rounded),
              title: Text('Interface'),
              subtitle: Text(
                'Sliding menu, Library',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.headset_rounded),
              title: Text('Audio'),
              subtitle: Text(
                'Gapless, Crossfading, Equalizer, Repeat',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.contacts_rounded),
              title: Text('Metadata'),
              subtitle: Text(
                'Album covers, Artist images, Scrobble, Library',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.settings_remote_rounded),
              title: Text('Remote'),
              subtitle: Text(
                'Notification & Lockscreen',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.android_rounded),
              title: Text('Advanced'),
              subtitle: Text(
                'Development, Beta features',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade300,
                ),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.help_rounded),
              title: Text('FAQ'),
              subtitle: Text(
                'Need help? Check here first',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.notes_rounded),
              title: Text('Changelog'),
              subtitle: Text(
                'Click to open changelog',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
            TrackListTile(
              thumbnail: Icon(Icons.info_rounded),
              title: Text('About'),
              subtitle: Text(
                'MusicPlayer Version 2.43',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
