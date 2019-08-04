import 'package:flutter/material.dart';
import 'Text.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String currentText = 'Initial text';

 void _changeText() {
  setState(() {
   currentText = "Text Changed!";
  });
}

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('change text!'),
              onPressed: _changeText,
            ),
            AppText(currentText),
          ],
        );
  }
}
