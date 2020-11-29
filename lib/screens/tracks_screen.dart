import 'package:flutter/material.dart';

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
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.music_note_rounded),
                title: Text('Arbitrary track'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
