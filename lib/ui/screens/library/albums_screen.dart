import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:music_player/ui/atoms/album_tile.dart';
import 'package:music_player/util/strings.dart';

class AlbumsScreen extends StatelessWidget {
  final List<AlbumInfo> albums;

  AlbumsScreen({@required this.albums});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 50.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: List.generate(
          albums.length,
          (index) => AlbumTile(
            onTap: () {
              Navigator.of(context).pushNamed(ROUTE_ALBUM_PAGE);
            },
            albumTitle: albums.elementAt(index).title,
            artist: albums.elementAt(index).artist,
          ),
        ),
        addAutomaticKeepAlives: false,
      ),
    );
  }
}
