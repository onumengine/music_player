import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  ArtistTile({
    this.imagePath = 'lib/assets/images/3.png',
    this.artistName = "Unknown",
    this.onTap,
  });

  final String imagePath, artistName;
  VoidCallback onTap;

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
      onTap: onTap,
    );
  }
}
