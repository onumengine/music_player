import 'package:flutter/material.dart';

class AlbumPage extends StatefulWidget {
  AlbumPageState createState() => AlbumPageState();
}

class AlbumPageState extends State<AlbumPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('lib/images/four.jpg'),
            ),
          ),
          SliverFillRemaining(),
        ],
      ),
    );
  }
}
