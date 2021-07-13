import 'package:flutter/material.dart';
import 'package:music_player/ui/organisms/track_actions_dialog.dart';

class TrackListTile extends StatelessWidget {
  final Widget thumbnail, trailing;
  final String title, subtitle;
  final GestureTapCallback onTap;

  const TrackListTile(
      {this.thumbnail, this.title, this.subtitle, this.trailing, this.onTap});

  Widget build(BuildContext context) {
    return ListTile(
      leading: this.thumbnail,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(this.title),
          Text(
            this.subtitle,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
      trailing: this.trailing ?? null,
      onTap: this.onTap ?? null,
      onLongPress: () {
        displayTrackActionsDialog(context);
      },
    );
  }

  displayTrackActionsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return TrackActionsDialog();
      },
    );
  }
}
