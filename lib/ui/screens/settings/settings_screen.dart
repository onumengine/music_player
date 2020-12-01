import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.brush_rounded,
            ),
            title: Text('Styling'),
          ),
          ListTile(
            leading: Icon(
              Icons.play_circle_filled_rounded,
            ),
            title: Text('Now Playing'),
          ),
          ListTile(
            leading: Icon(Icons.image_rounded),
            title: Text('Interface'),
          ),
          ListTile(
            leading: Icon(Icons.headset_rounded),
            title: Text('Audio'),
          ),
          ListTile(
            leading: Icon(Icons.contacts_rounded),
            title: Text('Metadata'),
          ),
          ListTile(
            leading: Icon(Icons.settings_remote_rounded),
            title: Text('Remote'),
          ),
          ListTile(
            leading: Icon(Icons.android_rounded),
            title: Text('Advanced'),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Text(
              'About',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
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
    );
  }
}
