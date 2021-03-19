// UI building for Android
import 'package:flutter/material.dart';

void main() {
  // from material.dart import
  // calls the build widget
  runApp(MyFollowMeApp());
// also possible: void main() => runApp(MyFollowMeApp());
}

// StatelessWidget does the heavy lifting features for us from the
// material.dart app
class MyFollowMeApp extends StatelessWidget {
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
  ];

  @override
  Widget build(BuildContext context) {
    // named argument to easier remember which argument goes
    // into what position
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Follow Me App"),
        ),
        body: Column(
          children: [
            Text('The questions:'),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: null,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
