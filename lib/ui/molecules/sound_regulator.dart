import 'package:flutter/material.dart';

class SoundRegulator extends StatefulWidget {
  final Widget label;

  SoundRegulator({this.label});

  SoundRegulatorState createState() => SoundRegulatorState(label: this.label);
}

class SoundRegulatorState extends State<SoundRegulator> {
  final Widget label;
  double currentLevel = 0.0;
  bool switchValue = false;

  SoundRegulatorState({this.label});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              this.label,
              Switch(
                value: switchValue,
                onChanged: (selected) {
                  setState(() {
                    switchValue = selected;
                  });
                },
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
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
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text('${currentLevel.round().toString()}%'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
