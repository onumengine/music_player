import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/setting_tile.dart';

class SettingsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            AppBar(
              elevation: 1.0,
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
            SettingTile(
              thumbnail: Icon(
                Icons.brush_rounded,
              ),
              title: 'Styling',
              subtitle: 'Colors, Font, Animations',
              //style: TextStyle(fontSize: 12.0),
            ),
            ListTile(
              leading: Icon(
                Icons.play_circle_filled_rounded,
              ),
              title: Text('Now Playing'),
            ),
            SettingTile(
              thumbnail: Icon(Icons.image_rounded),
              title: 'Interface',
              subtitle: 'Sliding menu, Library',
              //style: TextStyle(fontSize: 12.0),
            ),
            SettingTile(
              thumbnail: Icon(Icons.headset_rounded),
              title: 'Audio',
              subtitle: 'Gapless, Crossfading, Equalizer, Repeat',
              //style: TextStyle(fontSize: 12.0),
            ),
            SettingTile(
              thumbnail: Icon(Icons.contacts_rounded),
              title: 'Metadata',
              subtitle: 'Album covers, Artist images, Scrobble, Library',
              //style: TextStyle(fontSize: 12.0),
            ),
            SettingTile(
              thumbnail: Icon(Icons.settings_remote_rounded),
              title: 'Remote',
              subtitle: 'Notification & Lockscreen',
              //style: TextStyle(fontSize: 12.0),
            ),
            SettingTile(
              thumbnail: Icon(Icons.android_rounded),
              title: 'Advanced',
              subtitle: 'Development, Beta features',
              //style: TextStyle(fontSize: 12.0),
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
            SettingTile(
              thumbnail: Icon(Icons.help_rounded),
              title: 'FAQ',
              subtitle: 'Need help? Check here first',
              //style: TextStyle(fontSize: 12.0),
            ),
            SettingTile(
              thumbnail: Icon(Icons.notes_rounded),
              title: 'Changelog',
              subtitle: 'Click to open changelog',
              //style: TextStyle(fontSize: 12.0),
            ),
            SettingTile(
              thumbnail: Icon(Icons.info_rounded),
              title: 'About',
              subtitle: 'MusicPlayer Version 2.43',
              //style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
