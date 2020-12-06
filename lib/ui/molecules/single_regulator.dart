import 'package:flutter/material.dart';

class SingleRegulator extends StatefulWidget {
  final Widget label;
  final String unit;
  final double maxLevel;

  SingleRegulator({this.label, this.unit, this.maxLevel});

  SingleRegulatorState createState() => SingleRegulatorState(
      label: this.label, unit: this.unit, maxLevel: this.maxLevel);
}

class SingleRegulatorState extends State<SingleRegulator> {
  final Widget label;
  final String unit;
  final double maxLevel;
  double currentLevel = 0.0;
  bool switchValue = false;

  SingleRegulatorState({this.label, this.unit, this.maxLevel});

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
                child: Text('${currentLevel.round().toString()}$unit'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
