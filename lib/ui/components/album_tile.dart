import 'package:flutter/material.dart';

class AlbumTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Image(
              image: AssetImage('lib/images/clip.png'),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.purpleAccent,
              ),
              color: Colors.purpleAccent,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'My TED Talk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text('Pyro The Rapper'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
