import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/track_listtile.dart';
import 'package:music_player/util/strings.dart';

enum NowPlayingOptions {
  screenAlwaysOn,
  screenRotationLock,
  quickToggles,
  goToCurrentTrack,
  clearQueue,
  removeDuplicates,
  restorePreviousQueue,
}

class CurrentPlaylistScreen extends StatefulWidget {
  _CurrentPlaylistScreenState createState() => _CurrentPlaylistScreenState();
}

class _CurrentPlaylistScreenState extends State<CurrentPlaylistScreen> {
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Text(TEXT_SHUFFLE),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Text(TEXT_SAVE_AS_PLAYLIST),
                  onPressed: () {},
                ),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.screenAlwaysOn,
                    child: Text(TEXT_SCREEN_ALWAYS_ON),
                  ),
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.screenRotationLock,
                    child: Text(TEXT_SCREEN_ROTATION_LOCK),
                  ),
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.quickToggles,
                    child: Text(TEXT_QUICK_TOGGLES),
                  ),
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.goToCurrentTrack,
                    child: Text(TEXT_GO_TO_CURRENT_TRACK),
                  ),
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.clearQueue,
                    child: Text(TEXT_CLEAR_QUEUE),
                  ),
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.removeDuplicates,
                    child: Text(TEXT_REMOVE_DUPLICATES),
                  ),
                  PopupMenuItem<NowPlayingOptions>(
                    value: NowPlayingOptions.restorePreviousQueue,
                    child: Text(TEXT_RESTORE_PREVIOUS_QUEUE),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => TrackListTile(
                thumbnail: Icon(Icons.music_note_rounded),
                title: 'Title',
                subtitle: 'Subtitle',
              ),
            ),
          )
        ],
      ),
    );
  }
}
