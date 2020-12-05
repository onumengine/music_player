import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum DropdownItem {
  custom,
  normal,
  classical,
  dance,
  flat,
  folk,
  heavyMetal,
  hipHop,
  jazz,
  pop,
  rock,
}

class EqualizerScreen extends StatefulWidget {
  EqualizerScreenState createState() => EqualizerScreenState();
}

class EqualizerScreenState extends State<EqualizerScreen> {
  bool selected = false;
  double sliderValue = 4.0;
  DropdownItem dropdownValue = DropdownItem.normal;

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                value: selected,
                onChanged: (newValue) {
                  setState(() {
                    selected = newValue;
                  });
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Row(
              children: <Widget>[
                Slider(
                  min: 0.0,
                  max: 10.0,
                  value: sliderValue,
                  onChanged: (newValue) {
                    setState(() => sliderValue = newValue);
                  },
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 24.0,
            ),
            child: DropdownButton<DropdownItem>(
              isDense: true,
              isExpanded: true,
              value: dropdownValue,
              onChanged: (DropdownItem selectedItem) {
                setState(() => dropdownValue = selectedItem);
              },
              items: <DropdownMenuItem<DropdownItem>>[
                DropdownMenuItem(
                  value: DropdownItem.custom,
                  child: Text('Custom'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.normal,
                  child: Text('Normal'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.classical,
                  child: Text('Classical'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.dance,
                  child: Text('Dance'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.flat,
                  child: Text('Flat'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.folk,
                  child: Text('Folk'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.heavyMetal,
                  child: Text('Heavy Metal'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.hipHop,
                  child: Text('Hip-hop'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.jazz,
                  child: Text('Jazz'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.pop,
                  child: Text('Pop'),
                ),
                DropdownMenuItem(
                  value: DropdownItem.rock,
                  child: Text('Rock'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
