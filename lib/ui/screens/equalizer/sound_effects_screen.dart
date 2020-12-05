import 'package:flutter/material.dart';
import 'package:music_player/ui/molecules/sound_regulator.dart';

class SoundEffectsScreen extends StatefulWidget {
  SoundEffectsScreenState createState() => SoundEffectsScreenState();
}

class SoundEffectsScreenState extends State<SoundEffectsScreen> {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SoundRegulator(
          label: Text(
            'BASS BOOST',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        )
      ],
    );
  }
}
