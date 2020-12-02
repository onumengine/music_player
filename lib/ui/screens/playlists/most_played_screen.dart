import 'package:flutter/material.dart';
import 'package:music_player/ui/components/most_played_tile.dart';

class MostPlayedScreen extends StatefulWidget {
  MostPlayedScreenState createState() => MostPlayedScreenState();
}

class MostPlayedScreenState extends State<MostPlayedScreen> {
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          children: List.generate(
            20,
            (index) => MostPlayedTile(
              ranking: '$index',
              numberOfPlays: '${20 - index}',
            ),
          ),
        ),
      ),
    );
  }
}
