import 'package:flutter/material.dart';

class PlaylistBanner extends StatefulWidget {
  PlaylistBannerState createState() => PlaylistBannerState();
}

class PlaylistBannerState extends State<PlaylistBanner> {
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: GridView.count(
        crossAxisCount: 3,
        addAutomaticKeepAlives: false,
        children: <Widget>[
          Image.asset(
            'lib/images/one.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/images/one.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/images/one.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/images/one.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/images/one.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/images/one.jpg',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
