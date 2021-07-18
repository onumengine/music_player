import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/ui/atoms/artist_tile.dart';

class ArtistsScreen extends StatelessWidget {
  final List<ArtistInfo> artists;

  ArtistsScreen({@required this.artists});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: GridView.count(
        addAutomaticKeepAlives: false,
        crossAxisCount: 2,
        children: List.generate(
          artists.length,
          (index) => ArtistTile(
            artistName: artists.elementAt(index).name,
          ),
        ),
      ),
    );
  }
}
