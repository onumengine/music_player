import 'package:flutter/material.dart';
import 'package:music_player/ui/screens/equalizer/equalizer_screen.dart';
import 'package:music_player/ui/screens/equalizer/sound_effects_screen.dart';

class EqualizerPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black45),
          actionsIconTheme: IconThemeData(color: Colors.black87),
          title: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black45,
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
