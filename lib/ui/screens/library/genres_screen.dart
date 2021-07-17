import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/pages/library_model.dart';
import 'package:provider/provider.dart';
import '../../atoms/genres_tile.dart';

class GenresScreen extends StatefulWidget {
  GenresScreenState createState() => GenresScreenState();
}

class GenresScreenState extends State<GenresScreen> {
  Widget build(BuildContext context) {
    return Consumer<LibraryModel>(
      builder: (context, model, child) => Padding(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: ListView.builder(
          addAutomaticKeepAlives: false,
          itemCount: model.genresInDevice.length,
          itemBuilder: (context, index) => GenresTile(
            genreName: model.genresInDevice.elementAt(index).name,
          ),
        ),
      ),
    );
  }
}
