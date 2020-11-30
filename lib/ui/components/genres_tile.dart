import 'package:flutter/material.dart';

class GenresTile extends StatelessWidget {
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.teal.shade100,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hip-hop',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
