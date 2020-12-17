import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';

class QueueTrackTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.menu_rounded),
          onPressed: () {},
        ),
        Expanded(
          child: TrackListTile(
            title: 'Deviation',
            subtitle: 'Bleede',
          ),
        ),
      ],
    );
  }
}
