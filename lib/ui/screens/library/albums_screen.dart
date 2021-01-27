import 'package:flutter/material.dart';
import 'package:music_player/util/strings.dart';
import '../../atoms/album_tile.dart';

class AlbumsScreen extends StatefulWidget {
  AlbumsScreenState createState() => AlbumsScreenState();
}

class AlbumsScreenState extends State<AlbumsScreen> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2.0, 2.0, 2.0, 50.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: List.generate(
          20,
          (index) => AlbumTile(
            onTap: () {
              Navigator.of(context).pushNamed(ROUTE_ALBUM_PAGE);
            },
          ),
        ),
        addAutomaticKeepAlives: false,
      ),
    );
  }
}
