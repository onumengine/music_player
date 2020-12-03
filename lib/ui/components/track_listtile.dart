import 'package:flutter/material.dart';

class TrackListTile extends StatelessWidget {
  final Widget thumbnail, trailing;
  final Text title, subtitle;
  final GestureTapCallback onTap;

  const TrackListTile(
      {this.thumbnail, this.title, this.subtitle, this.trailing, this.onTap});

  Widget build(BuildContext context) {
    return ListTile(
      leading: this.thumbnail,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this.title,
          this.subtitle,
        ],
      ),
      trailing: this.trailing ?? null,
      onTap: this.onTap,
    );
  }
}
