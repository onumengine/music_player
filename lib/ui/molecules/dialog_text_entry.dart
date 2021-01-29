import 'package:flutter/material.dart';

class DialogTextEntry extends StatelessWidget {
  final String caption;

  DialogTextEntry(this.caption) : assert(caption != null);

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          caption,
          style: TextStyle(fontSize: 11.0),
        ),
        SizedBox(height: 5.0),
        Container(
          height: 30.0,
          child: TextField(),
        )
      ],
    );
  }
}
