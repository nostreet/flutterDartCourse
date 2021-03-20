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
class MyFollowMeApp extends StatefulWidget {
  @override
  _MyFollowMeAppState createState() => _MyFollowMeAppState();
}

class _MyFollowMeAppState extends State<MyFollowMeApp> {
  var questions = [
    "What's your favorite color?",
    "What's your favorite animal?",
  ];

  var indexQuestions =0;

  @override
  Widget build(BuildContext context) {

    void answerQuestion() {
      // forces flutter to rerender interface
      // (calls builds again of the  said widget)
      setState(() {
        indexQuestions += 1;
      });
      print('Answer chosen!');
    }

    // named argument to easier remember which argument goes
    // into what position
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Follow Me App"),
        ),
        body: Column(
          children: [
            Text(questions[indexQuestions]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Answer 2 chosen"),
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
