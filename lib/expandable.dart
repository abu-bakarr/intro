import 'package:flutter/material.dart';

class ExpandableScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Expandable();
  }
}

class Expandable extends State<ExpandableScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionTile'),
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          ExpansionTile(
            backgroundColor: Colors.yellow[50],
            title: Text(
              'Coffee',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffee species.',
                  style: TextStyle(fontSize: 15),
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
