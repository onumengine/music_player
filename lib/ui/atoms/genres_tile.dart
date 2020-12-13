import 'package:flutter/material.dart';

class GenresTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: <Widget>[
          Container(
            height: 100.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
            child: Image.asset(
              'lib/assets/images/10.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Hip-hop',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/genre_page');
      },
    );
  }
}
