import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';


// ignore: must_be_immutable
class DateTimeWidget extends StatelessWidget {
  String? dateText;
  String? timeText;
  var validateFunction;
  dynamic dateOrTime;
  var onSaved;
  var onChanged;
  Key? key;

  DateTimeWidget({
    this.validateFunction,
    this.onSaved,
    this.key,
    this.dateText,
    this.timeText,
    this.onChanged,
    required this.dateOrTime,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 40),
        child: DateTimePicker(
          type: dateOrTime,
          dateMask: 'd MMM, yyyy',
          initialValue: DateTime.now().toString(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
          icon: Icon(Icons.event),
          dateLabelText: dateText,
          timeLabelText: timeText,
          onChanged: onChanged,
          onSaved: onSaved,
        ),
    );
  }
}
