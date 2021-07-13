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
      child: Stack(
        children: [
          Image.asset(this.imageUrl, fit: BoxFit.cover),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  bottom: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        this.albumTitle,
                        style: TextStyle(fontWeight: FontWeight.w900, color: Colors.white),
                      ),
                    ),
                    Text(
                      this.artist,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
