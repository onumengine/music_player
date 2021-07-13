import 'package:flutter/material.dart';
import 'package:music_player/ui/molecules/dialog_text_entry.dart';

class EditTrackDialog extends StatelessWidget {
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Edit Track'),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('CANCEL'),
        ),
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('OK'),
        ),
      ],
      content: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DialogTextEntry('Title'),
            SizedBox(
              height: 10.0,
            ),
            DialogTextEntry('Artist'),
            SizedBox(
              height: 10.0,
            ),
            DialogTextEntry('Album'),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: DialogTextEntry('Album Track Number'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  flex: 2,
                  child: DialogTextEntry('Disc #'),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            DialogTextEntry('Genre'),
            SizedBox(
              height: 10.0,
            ),
            DialogTextEntry('File Path'),
            SizedBox(
              height: 40.0,
            ),
            FlatButton(
              onPressed: () {
                print('SO YOU WANNA EDIT LYRICS');
              },
              child: Text('Edit Lyrics'),
            )
          ],
        ),
      ),
    );
  }
}
