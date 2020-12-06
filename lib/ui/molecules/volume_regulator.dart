import 'package:flutter/material.dart';

class VolumeRegulator extends StatefulWidget {
  final double maxLevel;

  VolumeRegulator({this.maxLevel});

  VolumeRegulatorState createState() =>
      VolumeRegulatorState(maxLevel: this.maxLevel);
}

class VolumeRegulatorState extends State<VolumeRegulator> {
  final double maxLevel;
  double currentLevel = 0.0;
  bool switchValue = false;

  VolumeRegulatorState({this.maxLevel});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'VOLUME',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.music_note_rounded),
              ),
              Expanded(
                child: Container(
                  child: Slider(
                    min: 0.0,
                    max: 100.0,
                    value: currentLevel,
                    onChanged: (value) {
                      setState(() {
                        currentLevel = value;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
