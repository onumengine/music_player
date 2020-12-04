import 'package:flutter/material.dart';
import 'package:music_player/ui/components/most_played_tile.dart';
import 'package:music_player/ui/components/track_listtile.dart';

class MostPlayedScreen extends StatefulWidget {
  MostPlayedScreenState createState() => MostPlayedScreenState();
}

class MostPlayedScreenState extends State<MostPlayedScreen> {
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return TrackListTile(
                thumbnail: Icon(Icons.music_note_rounded),
                title: Text('Misdirection'),
                subtitle: Text(
                  'Bleede',
                  style: TextStyle(
                    fontSize: 11.0,
                  ),
                ),
              );
            },
            childCount: 20,
          ),
        ),
      ],
    );
  }
}
