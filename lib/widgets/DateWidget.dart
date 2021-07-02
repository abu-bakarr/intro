import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DateWidget extends StatefulWidget {
  const DateWidget({
    this.context,
    this.initialDate,
    this.firstDate,
    this.format,
    this.selectedDate,
    this.labelText,
    this.title,
  });

  final String? context;
  final Path? initialDate;
  final Path? firstDate;
  final String? format;
  final String? labelText;
  final String? title;
  final DateTime? selectedDate;

  @override
  _DateWidgetState createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2010, 8),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("${selectedDate.toLocal()}".split(' ')[0]),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          // ignore: deprecated_member_use
          ElevatedButton(
            onPressed: () => _selectDate(context),
            child: Text('Select date'),
          ),
        ],
      ),
    );
  }
}
