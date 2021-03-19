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
class MyFollowMeApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // named argument to easier remember which argument goes
    // into what position
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
        title: Text("My Follow Me App"),
      ) ,
      body: Text("This is my default text!"),
    ),);
  }
}