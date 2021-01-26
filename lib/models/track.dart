import 'package:flutter/material.dart';

class Track {
  String title;
  String artist;
  String album;
  int albumTrackNumber;
  int discNumber;
  String genre;
  String filePath;

  Track(
      {this.title,
      this.artist,
      this.album,
      this.albumTrackNumber,
      this.discNumber,
      this.genre,
      this.filePath});
}
