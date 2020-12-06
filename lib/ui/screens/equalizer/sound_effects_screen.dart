import 'package:flutter/material.dart';
import 'package:music_player/ui/molecules/double_regulator.dart';
import 'package:music_player/ui/molecules/single_regulator.dart';

class SoundEffectsScreen extends StatefulWidget {
  SoundEffectsScreenState createState() => SoundEffectsScreenState();
}

class SoundEffectsScreenState extends State<SoundEffectsScreen> {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DoubleRegulator(
          label: Text(
            'SOUND BALANCE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
        ),
        SingleRegulator(
          label: Text(
            'BASS BOOST',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          unit: '%',
          maxLevel: 100.0,
        ),
        SingleRegulator(
          label: Text(
            'VIRTUALIZER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          unit: '%',
          maxLevel: 100.0,
        ),
        SingleRegulator(
          label: Text(
            'AMPLIFIER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
            ),
          ),
          unit: 'mDB',
          maxLevel: 4000.0,
        ),
      ],
    );
  }
}
