import 'package:flutter/material.dart';
import 'package:music_player/util/strings.dart';

class ArtistTile extends StatelessWidget {
  ArtistTile({this.imagePath = 'lib/assets/images/3.png', this.artistName="Unknown"});

  final String imagePath, artistName;

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 150,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Image.asset(imagePath),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                this.artistName,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed(ROUTE_ARTIST_PAGE);
      },
    );
  }
}
