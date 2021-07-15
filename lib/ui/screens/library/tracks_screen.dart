import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/pages/library_page_bloc.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:provider/provider.dart';

class TracksScreen extends StatefulWidget {
  final Widget thumbnail;

  const TracksScreen({this.thumbnail = const Icon(Icons.music_note_rounded)});
  TracksScreenState createState() =>
      TracksScreenState(stateThumbnail: this.thumbnail);
}

class TracksScreenState extends State<TracksScreen> {
  final Widget stateThumbnail;

  TracksScreenState({this.stateThumbnail});

  @override
  void initState() {
    super.initState();
    Provider.of<LibraryPageBloc>(context, listen: false).fetchSongsInDevice();
  }

  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
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
              return Consumer<LibraryPageBloc>(
                builder: (context, model, child) {
                  return Column(
                    children: (model.songsInDevice.length == 0)
                        ? [FillerTile()]
                        : [
                            ...model.songsInDevice.map(
                              (song) => TrackListTile(
                                thumbnail: Icon(Icons.music_note_rounded),
                                title: song.title,
                                subtitle: song.artist,
                                trailing: Text(song.duration),
                              ),
                            ),
                            FillerTile(),
                          ],
                  );
                },
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}
