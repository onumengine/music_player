import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

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
                title: 'Misdirection',
                subtitle: 'Bleede',
              );
            },
            childCount: 20,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: FillerTile(),
        ),
      ],
    );
  }
}
