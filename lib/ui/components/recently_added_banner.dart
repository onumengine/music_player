import 'package:flutter/material.dart';
import 'package:music_player/ui/components/artist_tile.dart';

class RecentlyAddedBanner extends StatefulWidget {
  RecentlyAddedBannerState createState() => RecentlyAddedBannerState();
}

class RecentlyAddedBannerState extends State<RecentlyAddedBanner> {
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      child: GridView.count(
        crossAxisCount: 3,
        semanticChildCount: 3,
        childAspectRatio: 1.0,
        children: [
          ArtistTile(),
          ArtistTile(),
          ArtistTile(),
        ],
      ),
    );
  }
}
