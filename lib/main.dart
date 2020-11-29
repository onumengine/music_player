import 'package:flutter/material.dart';
import 'components/drawer_layout.dart';
import 'screens/tracks_screen.dart';
import 'screens/albums_screen.dart';
import 'screens/artists_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Music'),
          bottom: TabBar(
            tabs: <Tab>[
              Tab(
                text: 'TRACKS',
              ),
              Tab(
                text: 'ARTISTS',
              ),
              Tab(
                text: 'ALBUMS',
              ),
              Tab(
                text: 'GENRES',
              ),
            ],
          ),
        ),
        drawer: DrawerLayout(),
        body: TabBarView(
          children: <Widget>[
            TracksScreen(),
            ArtistsScreen(),
            AlbumsScreen(),
            Icon(Icons.biotech_rounded),
          ],
        ),
      ),
    );
  }
}
