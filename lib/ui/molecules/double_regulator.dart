import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/pages/equalizer_model.dart';
import 'package:provider/provider.dart';

class DoubleRegulator extends StatefulWidget {
  final Widget label;

  DoubleRegulator({this.label});

  DoubleRegulatorState createState() => DoubleRegulatorState(label: this.label);
}

class DoubleRegulatorState extends State<DoubleRegulator> {
  final Widget label;

  DoubleRegulatorState({this.label});

  Widget build(BuildContext context) {
    EqualizerModel equalizerPageBloc = context.watch<EqualizerModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: this.label,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Text(
                  'LEFT',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Slider(
                    min: 0.0,
                    max: 100.0,
                    value: equalizerPageBloc.leftSoundBalanceValue,
                    onChanged: (value) {
                      equalizerPageBloc.leftSoundBalanceValue = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text(
                    '${equalizerPageBloc.leftSoundBalanceValue.round().toString()}%'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'RIGHT',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Slider(
                    min: 0.0,
                    max: 100.0,
                    value: equalizerPageBloc.rightSoundBalanceValue,
                    onChanged: (value) {
                      equalizerPageBloc.rightSoundBalanceValue = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Text(
                    '${equalizerPageBloc.rightSoundBalanceValue.round().toString()}%'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
