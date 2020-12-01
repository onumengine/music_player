import 'package:flutter/material.dart';

class TrackListTile extends StatelessWidget {
  final leading;
  final Text title, subtitle;
  final GestureTapCallback onTap;

  const TrackListTile({this.leading, this.title, this.subtitle, this.onTap});

  Widget build(BuildContext context) {
    return ListTile(
      leading: this.leading,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this.title,
          this.subtitle,
        ],
      ),
      onTap: this.onTap,
    );
  }
}
