import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  String name;
  TextWidget({
    required this.name,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 50, right: 10),
      child: Text(name),
    );
  }
}
