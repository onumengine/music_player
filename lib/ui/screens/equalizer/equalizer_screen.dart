import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/pages/equalizer_page_bloc.dart';
import 'package:provider/provider.dart';

class EqualizerScreen extends StatefulWidget {
  EqualizerScreenState createState() => EqualizerScreenState();
}

class EqualizerScreenState extends State<EqualizerScreen> {
  Widget build(BuildContext context) {
    EqualizerPageBloc viewModel = context.watch<EqualizerPageBloc>();
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Switch(
                value: viewModel.isSelected,
                onChanged: (newValue) {
                  viewModel.isSelected = newValue;
                },
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                children: <Widget>[
                  Slider(
                    min: 0.0,
                    max: 10.0,
                    value: viewModel.slider1Value,
                    onChanged: (newValue) {
                      viewModel.slider1Value = newValue;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Slider(
                    min: 0.0,
                    max: 10.0,
                    value: viewModel.slider2Value,
                    onChanged: (newValue) {
                      viewModel.slider2Value = newValue;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Slider(
                    min: 0.0,
                    max: 10.0,
                    value: viewModel.slider3Value,
                    onChanged: (newValue) {
                      viewModel.slider3Value = newValue;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Slider(
                    min: 0.0,
                    max: 10.0,
                    value: viewModel.slider4Value,
                    onChanged: (newValue) {
                      viewModel.slider4Value = newValue;
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Slider(
                    min: 0.0,
                    max: 10.0,
                    value: viewModel.slider5Value,
                    onChanged: (newValue) {
                      viewModel.slider5Value = newValue;
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 24.0,
            ),
            child: DropdownButton<DropdownItem>(
              isDense: true,
              isExpanded: true,
              value: viewModel.dropdownValue,
              onChanged: (DropdownItem selectedItem) {
                viewModel.dropdownValue = selectedItem;
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
          ),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
