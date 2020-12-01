import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  ArtistTile({this.imagePath = 'lib/images/clip.png'});

  String imagePath;

  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Image.asset(imagePath),
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Text('Pyro The Rapper'),
          ),
        ],
      ),
    );
  }
}
