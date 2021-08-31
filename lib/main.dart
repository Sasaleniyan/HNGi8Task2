import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profiler/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final myController = TextEditingController();

  /// formKey for submission
  final formKey = GlobalKey<FormState>();

  /// onSubmit
  String value = "";
  var defaultText = TextStyle(color: Colors.blue);
  var linkText = TextStyle(color: Colors.blue);
  var visit = "visit";
  var web = 'https://hng.tech/';

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text('My Profiler HNGi8')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('images/logo.png'),
              alignment: Alignment.topCenter,
            ),
            Card(
              // margin: EdgeInsets.symmetric(vertical: 10.0,
              //     horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'For more info please' " " + '$visit $web ',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.blue,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                controller: myController,
                onChanged: (String text) {
                  setState(() {
                    // value = text ;
                  });
                },
                onFieldSubmitted: (String text) {
                  setState(() {
                    value = 'Nice meeting you:' " " + text;
                  });
                  myController.clear();
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Your Name!';
                  }
                },
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Please tell us your name',
                    labelText: 'Name'),
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Text(
                  " $value ",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

