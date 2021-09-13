import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
