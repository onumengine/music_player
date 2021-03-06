import 'package:flutter/material.dart';
import 'package:music_player/util/strings.dart';

class GenresTile extends StatelessWidget {
  final String genreName;

  GenresTile({this.genreName});

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: <Widget>[
          Container(
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Image.asset(
              'lib/assets/images/10.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              genreName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed(ROUTE_GENRE_PAGE);
      },
    );
  }
}
