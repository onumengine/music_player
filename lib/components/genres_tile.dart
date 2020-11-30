import 'package:flutter/material.dart';

class GenresTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      height: 30.0,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: <Widget>[
          Image.asset('lib/images/three.jpg'),
          Text('Hip-hop'),
        ],
      ),
    );
  }
}
