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
        childAspectRatio: 1.4,
        addAutomaticKeepAlives: false,
        children: <Widget>[
          Image.asset(
            'lib/assets/images/1.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/assets/images/2.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/assets/images/3.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/assets/images/6.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/assets/images/10.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'lib/assets/images/11.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
