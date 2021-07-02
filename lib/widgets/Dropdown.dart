import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';

// ignore: must_be_immutable
class Dropdown extends StatelessWidget {
  List<String> listItems;
  var validateFunction;
  var dropdownClick;
  var dropStateChanged;
  Key? key;
  String? selectItem;
  Dropdown({
    this.validateFunction,
    this.dropdownClick,
    this.key,
    required this.selectItem,
    this.dropStateChanged,
    required this.listItems,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool _isBackPressedOrTouchedOutSide = false;
    bool isPanDown = false;

    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 30),
      child: AwesomeDropDown(
        dropDownList: listItems,
        isPanDown: isPanDown,
        dropDownOverlayBGColor: Colors.transparent,
        onDropDownItemClick: dropdownClick,
        dropStateChanged: dropStateChanged,
      ),
    );
  }
}
