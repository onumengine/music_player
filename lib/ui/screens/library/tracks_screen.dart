import 'package:flutter/material.dart';
import 'package:music_player/blocs/screens/library/tracks_screen_bloc.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:provider/provider.dart';

class TracksScreen extends StatefulWidget {
  final Widget thumbnail;

  const TracksScreen({this.thumbnail = const Icon(Icons.music_note_rounded)});
  TracksScreenState createState() =>
      TracksScreenState(stateThumbnail: this.thumbnail);
}

class TracksScreenState extends State<TracksScreen> {
  final Widget stateThumbnail;
  TracksScreenBloc bloc;

  TracksScreenState({this.stateThumbnail});

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    bloc = context.watch<TracksScreenBloc>();
  }

  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Column(
                children: <Widget>[
                  ShuffleTile(),
                  ...bloc.getTrackTiles(),
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
