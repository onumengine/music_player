import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/molecules/queue_track_tile.dart';

class FavoritesScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ShuffleTile();
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return QueueTrackTile();
            },
            childCount: 30,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'SORT',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'ADD TRACKS',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'REMOVE DUPLICATES',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  FillerTile(),
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
