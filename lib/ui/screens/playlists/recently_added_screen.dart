import 'package:flutter/material.dart';
import 'package:music_player/ui/components/artist_tile.dart';
import 'package:music_player/ui/components/recently_added_banner.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';

class RecentlyAddedScreen extends StatefulWidget {
  RecentlyAddedScreenState createState() => RecentlyAddedScreenState();
}

class RecentlyAddedScreenState extends State<RecentlyAddedScreen> {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('ALBUMS'),
              Container(
                height: 30.0,
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('MORE'),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RecentlyAddedBanner(),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 16.0),
          child: Text('TRACKS'),
        ),
      ],
    );
  }
}
