import 'package:flutter/material.dart';
import '../../components/artist_tile.dart';

class ArtistsScreen extends StatefulWidget {
  ArtistsScreenState createState() => ArtistsScreenState();
}

class ArtistsScreenState extends State<ArtistsScreen> {
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        20,
        (index) => ArtistTile(),
      ),
    );
  }
}
