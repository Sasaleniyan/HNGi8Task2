import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profiler/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  var splashText = 'A Space to bring out the Best in You!';

  @override
  void initState() {
    super.initState();
    __navigateToHome();
  }

  __navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => MyHomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Container(
              child: Text(
                'Welcome to HNGi8 ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.blue[900]),
              ),
            ),
          ),
          Text(
            '$splashText',
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Pacifico',
                color: Colors.blue,
                fontWeight:
                    FontWeight.lerp(FontWeight.w100, FontWeight.w500, 10.0)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'images/splash_screen.png',
              height: 100.0,
              width: 600.0,
            ),
          )
        ],
      ),
    );
  }
}
