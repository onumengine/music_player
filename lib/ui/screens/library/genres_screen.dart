import 'package:flutter/material.dart';
import '../../atoms/genres_tile.dart';

class GenresScreen extends StatefulWidget {
  GenresScreenState createState() => GenresScreenState();
}

class GenresScreenState extends State<GenresScreen> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50.0),
      child: ListView.builder(
        addAutomaticKeepAlives: false,
        itemCount: 20,
        itemBuilder: (context, index) => GenresTile(),
      ),
    );
  }
}
