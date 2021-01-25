import 'package:flutter/material.dart';
import 'package:music_player/blocs/pages/equalizer_page_bloc.dart';
import 'package:music_player/blocs/screens/library/tracks_screen_bloc.dart';
import 'package:music_player/ui/atoms/now_playing_tile.dart';
import 'package:music_player/ui/organisms/drawer_layout.dart';
import 'package:music_player/ui/route_generator.dart';
import 'package:music_player/ui/screens/library/tracks_screen.dart';
import 'package:music_player/ui/screens/library/albums_screen.dart';
import 'package:music_player/ui/screens/library/artists_screen.dart';
import 'package:music_player/ui/screens/library/genres_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TracksScreenBloc>.value(
          value: TracksScreenBloc(),
        ),
        ChangeNotifierProvider<EqualizerPageBloc>.value(
          value: EqualizerPageBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ), //style for bold selected tab label
            headline2: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ), //style for bold unselected tab label
            headline3: TextStyle(), //style for plain selected tab label
            headline4: TextStyle(), //style for plain unselected tab label
            headline5: TextStyle(), //style for appbar titles
            subtitle1: TextStyle(), //style for song titlesin song listtile
            subtitle2: TextStyle(
              color: Colors.black54,
              fontSize: 11.0,
            ), //style for artist name in song listtile
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
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
          iconTheme: IconThemeData(color: Colors.black45),
          actionsIconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          elevation: 1.0,
          title: TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black45,
            isScrollable: true,
            labelStyle: Theme.of(context).textTheme.headline1,
            unselectedLabelStyle: Theme.of(context).textTheme.headline2,
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
          actions: <IconButton>[
            IconButton(
              icon: Icon(Icons.search_rounded),
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Whatchu looking for?'),
                  ),
                );
              },
            ),
          ],
        ),
        drawer: DrawerLayout(),
        body: SafeArea(
          child: TabBarView(
            children: <Widget>[
              TracksScreen(),
              ArtistsScreen(),
              AlbumsScreen(),
              GenresScreen(),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 50,
          child: NowPlayingTile(),
        ),
      ),
    );
  }
}
