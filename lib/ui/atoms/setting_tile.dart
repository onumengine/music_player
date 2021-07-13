import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  final Widget thumbnail, trailing;
  final String title, subtitle;
  final GestureTapCallback onTap;

  const SettingTile(
      {this.thumbnail, this.title, this.subtitle, this.trailing, this.onTap});

  Widget build(BuildContext context) {
    return ListTile(
      leading: this.thumbnail,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.title),
          Text(
            this.subtitle,
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
      trailing: this.trailing ?? null,
      onTap: this.onTap ?? null,
    );
  }
}
