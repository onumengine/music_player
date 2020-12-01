import 'package:flutter/material.dart';
import 'package:music_player/ui/components/track_listtile.dart';
import 'now_playing_screen.dart';

class TracksScreen extends StatefulWidget {
  TracksScreenState createState() => TracksScreenState();
}

class TracksScreenState extends State<TracksScreen> {
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.shuffle_rounded),
          title: Text('Shuffle Play'),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => TrackListTile(
                leading: Icon(Icons.music_note_rounded),
                title: Text(
                  'Arbitrary track',
                ),
                subtitle: Text(
                  'Pyro The Rapper',
                  style: TextStyle(
                    fontSize: 10.0,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NowPlayingScreen(),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
