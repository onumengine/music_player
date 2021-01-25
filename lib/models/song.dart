import 'package:flutter/material.dart';

class Song {
  String title;
  String artist;
  String album;
  int albumTrackNumber;
  int discNumber;
  String genre;
  String filePath;

  Song(
      {this.title,
      this.artist,
      this.album,
      this.albumTrackNumber,
      this.discNumber,
      this.genre,
      this.filePath});
}
