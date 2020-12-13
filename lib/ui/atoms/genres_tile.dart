import 'package:flutter/material.dart';

class GenresTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: double.infinity,
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
                child: Image.asset(
                  'lib/assets/images/10.png',
                  fit: BoxFit.none,
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
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/genre_page');
      },
    );
  }
}
