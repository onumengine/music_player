import 'package:flutter/material.dart';

class GenrePage extends StatefulWidget {
  GenrePageState createState() => GenrePageState();
}

class GenrePageState extends State<GenrePage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Hip-hop'),
            bottom: TabBar(
              tabs: <Tab>[
                Tab(
                  text: 'TRACKS',
                ),
                Tab(
                  text: 'ALBUMS',
                ),
                Tab(
                  text: 'ARTISTS',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [],
          )),
    );
  }
}
