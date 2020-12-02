import 'package:flutter/material.dart';
import '../../components/album_tile.dart';

class AlbumsScreen extends StatefulWidget {
  final int columnCount;

  const AlbumsScreen({this.columnCount = 2});

  AlbumsScreenState createState() =>
      AlbumsScreenState(columns: this.columnCount);
}

class AlbumsScreenState extends State<AlbumsScreen> {
  int columns;

  AlbumsScreenState({this.columns = 2});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GridView.count(
        crossAxisCount: this.columns,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: List.generate(
          20,
          (index) => AlbumTile(),
        ),
      ),
    );
  }
}
