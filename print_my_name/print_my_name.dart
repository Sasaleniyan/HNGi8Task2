import 'package:flutter/material.dart';

void main() => runApp(MyName());

class MyName extends StatelessWidget {
  const MyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Material(
      child: Center(
        child: Text(
          "Hello my name is: Sasaleniyan"
        ),
      ),
    ),
    );
  }
}
