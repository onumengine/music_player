import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Image.asset('lib/images/clip.png'),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Text('Pyro The Rapper'),
        ),
      ],
    );
  }
}
