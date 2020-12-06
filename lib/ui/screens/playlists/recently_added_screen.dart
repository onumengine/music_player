import 'package:flutter/material.dart';
import 'package:music_player/ui/molecules/recently_added_banner.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';

class RecentlyAddedScreen extends StatefulWidget {
  RecentlyAddedScreenState createState() => RecentlyAddedScreenState();
}

class RecentlyAddedScreenState extends State<RecentlyAddedScreen> {
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('ALBUMS'),
                    Container(
                      height: 30.0,
                      child: ElevatedButton(
                        onPressed: null,
                        child: Text('MORE'),
                      ),
                    )
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: RecentlyAddedBanner(),
              );
            },
            childCount: 1,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 16.0, 16.0, 16.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('TRACKS'),
                ),
              );
            },
            childCount: 1,
          ),
        ),
        SliverFillRemaining(
          child: TracksScreen(),
        ),
      ],
    );
  }
}
