import 'package:flutter/material.dart';
import 'package:music_player/blocs/pages/equalizer_page_bloc.dart';
import 'package:music_player/blocs/pages/now_playing_page_bloc.dart';
import 'package:music_player/blocs/screens/library/tracks_screen_bloc.dart';
import 'package:music_player/ui/route_generator.dart';
import 'package:music_player/util/strings.dart';
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
        ChangeNotifierProvider<NowPlayingBloc>.value(
          value: NowPlayingBloc(),
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
        initialRoute: ROUTE_LIBRARY_PAGE,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}