import 'package:flutter/material.dart';
import '../components/genres_tile.dart';

class GenresScreen extends StatefulWidget {
  GenresScreenState createState() => GenresScreenState();
}

class GenresScreenState extends State<GenresScreen> {
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => GenresTile(),
    );
  }
}
