import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: true,
              title: Text('Settings'),
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
            ListTile(
              leading: Icon(
                Icons.brush_rounded,
              ),
              title: Text('Styling'),
              subtitle: Text('Colors, Font, Animations'),
            ),
            ListTile(
              leading: Icon(
                Icons.play_circle_filled_rounded,
              ),
              title: Text('Now Playing'),
              subtitle: Text(''),
            ),
            ListTile(
              leading: Icon(Icons.image_rounded),
              title: Text('Interface'),
              subtitle: Text('Sliding menu, Library',
                  style: TextStyle(fontSize: 12.0)),
            ),
            ListTile(
              leading: Icon(Icons.headset_rounded),
              title: Text('Audio'),
              subtitle: Text('Gapless, Crossfading, Equalizer, Repeat'),
            ),
            ListTile(
              leading: Icon(Icons.contacts_rounded),
              title: Text('Metadata'),
              subtitle: Text('Album covers, Artist images, Scrobble, Library'),
            ),
            ListTile(
              leading: Icon(Icons.settings_remote_rounded),
              title: Text('Remote'),
              subtitle: Text('Notification & Lockscreen'),
            ),
            ListTile(
              leading: Icon(Icons.android_rounded),
              title: Text('Advanced'),
              subtitle: Text('Development, Beta features'),
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
            ListTile(
              leading: Icon(Icons.help_rounded),
              title: Text('FAQ'),
            ),
            ListTile(
              leading: Icon(Icons.notes_rounded),
              title: Text('Changelog'),
            ),
            ListTile(
              leading: Icon(Icons.info_rounded),
              title: Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
