import 'package:flutter/material.dart';

class TrackListTile extends StatelessWidget {
  final Widget leading, trailing;
  final Text title, subtitle;
  final GestureTapCallback onTap;

  const TrackListTile(
      {this.leading, this.title, this.subtitle, this.trailing, this.onTap})
      : assert(subtitle != null);

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
      trailing: this.trailing ?? null,
      onTap: this.onTap,
    );
  }
}
