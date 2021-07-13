import 'package:flutter_multiselect/flutter_multiselect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MultiDropDown extends StatelessWidget {
  List<dynamic> listItems;
  var validateFunction;
  var onSaved;
  var onChanged;
  String titleText;
  String textField;
  dynamic valueField;
  int maxLength;
  String selectedOptionsInfoText;
  Key? key;
  String? selectItem;
  MultiDropDown({
    this.validateFunction,
    this.onSaved,
    this.key,
    this.selectItem,
    this.onChanged,
    required this.listItems,
    required this.titleText,
    required this.selectedOptionsInfoText,
    required this.textField,
    required this.valueField,
    required this.maxLength,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 50, right: 10),
        child: MultiSelect(
            //--------customization selection modal-----------
            buttonBarColor: Colors.red,
            cancelButtonText: "Exit",
            titleText: titleText,
            checkBoxColor: Colors.black,
            selectedOptionsInfoText: selectedOptionsInfoText,
            selectedOptionsBoxColor: Colors.green,
            //--------end customization selection modal------------
            errorText: 'Please select one or more option(s)',
            dataSource: listItems,
            filterable: true,
            required: true,
            validator: validateFunction,
            onSaved: onSaved,
            textField: textField,
            valueField: valueField,
            maxLength: maxLength,
            change: onChanged));
  }
}
