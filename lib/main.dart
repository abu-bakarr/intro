import 'package:flutter/material.dart';
// import 'package:intro/dockObserverForm.dart';
import 'package:intro/seaObserverForm.dart';
// import 'package:intro/enumeratorForm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application. @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fishery Data Collection',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SeaObserver());
  }
}
