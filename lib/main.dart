import 'package:flutter/material.dart';
import 'package:music_player/viewmodels/pages/equalizer_model.dart';
import 'package:music_player/viewmodels/pages/library_model.dart';
import 'package:music_player/viewmodels/pages/now_playing_model.dart';
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
        ChangeNotifierProvider<EqualizerModel>.value(
          value: EqualizerModel(),
        ),
        ChangeNotifierProvider<NowPlayingModel>.value(
          value: NowPlayingModel(),
        ),
        ChangeNotifierProvider<LibraryModel>.value(
          value: LibraryModel(),
        )
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
