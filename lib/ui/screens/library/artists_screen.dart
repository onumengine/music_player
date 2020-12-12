import 'package:flutter/material.dart';
import '../../atoms/artist_tile.dart';

class ArtistsScreen extends StatefulWidget {
  ArtistsScreenState createState() => ArtistsScreenState();
}

class ArtistsScreenState extends State<ArtistsScreen> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          20,
          (index) => ArtistTile(),
        ),
      ),
    );
  }
}
