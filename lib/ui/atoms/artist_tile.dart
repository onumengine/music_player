import 'package:flutter/material.dart';

class ArtistTile extends StatelessWidget {
  ArtistTile({this.imagePath = 'lib/assets/images/3.png'});

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
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Pyro The Rapper',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/artist_page');
      },
    );
  }
}
