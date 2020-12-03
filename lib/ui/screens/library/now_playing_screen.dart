import 'package:flutter/material.dart';

class NowPlayingScreen extends StatefulWidget {
  NowPlayingScreenState createState() => NowPlayingScreenState();
}

class NowPlayingScreenState extends State<NowPlayingScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 8.0, 0.0, 2.0),
                          child: Text(
                            'Opposites Attract',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(8.0, 2.0, 0.0, 16.0),
                          child: Text('Pyro The Rapper',
                              style: TextStyle(
                                fontSize: 14.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(Icons.equalizer_rounded),
                ),
              ],
            ),
            Image(
              image: AssetImage('lib/images/zero.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The Lifetape'),
            ),
            SizedBox(
              height: 30.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 0.0,
                  horizontal: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        '0:00',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Slider(
                        value: 0.5,
                        onChanged: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Text(
                        '3:15',
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.skip_previous_rounded),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.play_arrow_rounded),
                    onPressed: null,
                  ),
                  IconButton(
                    icon: Icon(Icons.skip_next_rounded),
                    onPressed: null,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 2.0,
              ),
              child: Text('248/384'),
            )
          ],
        ),
      ),
    );
  }
}
