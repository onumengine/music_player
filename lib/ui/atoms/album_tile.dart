import 'package:flutter/material.dart';

class AlbumTile extends StatelessWidget {
  final GestureTapCallback onTap;
  final String imageUrl, albumTitle, artist;

  AlbumTile(
      {this.imageUrl = 'lib/assets/images/6.png',
      this.albumTitle = 'My Ted Talk',
      this.artist = 'Pyro The Rapper',
      this.onTap});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset(this.imageUrl, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      this.albumTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(this.artist),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
