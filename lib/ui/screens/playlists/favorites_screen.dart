import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/molecules/queue_track_tile.dart';

class FavoritesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ShuffleTile(),
          ...List.generate(
            30,
            (int index) => QueueTrackTile(key: ValueKey(index)),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'SORT',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'ADD TRACKS',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'REMOVE DUPLICATES',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          FillerTile(),
        ],
      ),
    );
  }
}
