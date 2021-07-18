import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/ui/atoms/filler_tile.dart';
import 'package:music_player/ui/atoms/shuffle_tile.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/viewmodels/pages/now_playing_model.dart';
import 'package:provider/provider.dart';

class TracksScreen extends StatelessWidget {
  final Widget thumbnail;
  final List<SongInfo> songs;

  const TracksScreen({
    @required this.songs,
    this.thumbnail = const Icon(Icons.music_note_rounded),
  });

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
              var currentSong = songs.elementAt(index);
              return (songs.length == 0)
                  ? Container(
                      height: 300,
                      width: 300,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : TrackListTile(
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
            childCount: songs.length,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            FillerTile(),
          ]),
        ),
      ],
    );
  }
}
