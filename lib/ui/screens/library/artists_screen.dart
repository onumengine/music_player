import 'package:flutter/material.dart';
import 'package:music_player/ui/atoms/artist_tile.dart';
import 'package:music_player/viewmodels/pages/library_model.dart';
import 'package:provider/provider.dart';

class ArtistsScreen extends StatefulWidget {
  ArtistsScreenState createState() => ArtistsScreenState();
}

class ArtistsScreenState extends State<ArtistsScreen> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: Consumer<LibraryModel>(
        builder: (context, model, child) => GridView.count(
          addAutomaticKeepAlives: false,
          crossAxisCount: 2,
          children: List.generate(
            model.artistsInDevice.length,
            (index) => ArtistTile(
              artistName: model.artistsInDevice.elementAt(index).name,
            ),
          ),
        ),
      ),
    );
  }
}
