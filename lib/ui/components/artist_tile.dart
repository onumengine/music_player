import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  ArtistTile({this.imagePath = 'lib/images/clip.png'});

  final String imagePath;

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
      ),
      onTap: () {
        Navigator.of(context).pushNamed('');
      },
    );
  }
}
