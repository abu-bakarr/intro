import 'package:flutter/material.dart';
// import 'package:intro/form_screen.dart';
import 'package:intro/form_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application. @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello World Demo Application',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FormScreen());
  }
}

// Name of Vessel
// Number of Vessel
// Date
// License Number
// Date of Issue
// Expiry Date
// License Type
// Vessel Type
// Name of Observer
// Call Sign
// Crew Composition
// Members Nationality
// Logbook Availability

// Mid-water Trawler, Pelagic Trawler, Demersal Type, Tuna Vessel, Longline Vessel, Shrimper Vessel, Supply Vessel, Carrier Vessel, Other Vessel

// No
// Name
// Bags
// Bags KGS
// Cartons
// Cartons KGS
// Loose Fish(KGS)
// Total Weight(KGS)
// Total Weight of Fish on Board(KGS)
// Total Weight of Shelfish On Board
// Captain's Name
// Captain's Signature
// No
// Name
// Bags
// Bags KGS
// Cartons
// Cartons KGS
// Loose Fish(KGS)
// Total Weight(KGS)
// Agent Name
// Agent Signature
// Remarks
// Dock Observer
// Observer Signature