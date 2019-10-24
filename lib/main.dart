import 'package:flutter/material.dart';

// ? Main function goes here
// void main() {
//   runApp(MyApp());
// }

// ? Same as above, in a simple way
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // ? This is equivalent to render method on react native
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
