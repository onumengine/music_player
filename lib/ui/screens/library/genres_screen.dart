import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import '../../atoms/genres_tile.dart';

class GenresScreen extends StatelessWidget {
  final List<GenreInfo> genres;

  GenresScreen({@required this.genres});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: ListView.builder(
        addAutomaticKeepAlives: false,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenresTile(
          genreName: genres.elementAt(index).name,
        ),
      ),
    );
  }
}
