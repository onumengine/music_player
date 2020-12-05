import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/equalizer/equalizer_screen.dart';
import 'package:music_player/ui/screens/equalizer/sound_effects_screen.dart';

class EqualizerPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: <Tab>[
              Tab(
                text: 'EQUALIZER',
              ),
              Tab(text: 'SOUND EFFECTS'),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search_rounded),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          children: <Widget>[
            EqualizerScreen(),
            SoundEffectsScreen(),
          ],
        ),
      ),
    );
  }
}