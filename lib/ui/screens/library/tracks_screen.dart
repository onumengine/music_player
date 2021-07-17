import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/pages/library_model.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/viewmodels/pages/now_playing_model.dart';
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
    Provider.of<LibraryModel>(context, listen: false).refreshLibrary();
  }

  Widget build(BuildContext context) {
    return Consumer<LibraryModel>(
      builder: (context, model, child) => CustomScrollView(
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
                var currentSong = model.songsInDevice.elementAt(index);
                return TrackListTile(
                  thumbnail: Icon(Icons.music_note_rounded),
                  title: currentSong.title,
                  subtitle: currentSong.artist,
                  trailing: Text(currentSong.duration),
                  onTap: () {
                    Provider.of<NowPlayingModel>(context, listen: false)
                        .play(currentSong.filePath);
                  },
                );
              },
              childCount: model.songsInDevice.length,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              FillerTile(),
            ]),
          ),
        ],
      ),
    );
  }
}
