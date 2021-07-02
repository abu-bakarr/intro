import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TesInput extends StatelessWidget {
  IconData? icon;
  String? hintText;
  String? labelText;
  TextInputType? textInputType;
  Color? textFieldColor, iconColor;
  bool? obscureText;
  double? bottomMargin;
  TextStyle? textStyle, hintStyle;
  var validateFunction;
  var onSaved;
  Key? key;
  TesInput({
    this.icon,
    this.hintText,
    this.textInputType,
    this.textFieldColor,
    this.iconColor,
    this.obscureText,
    this.bottomMargin,
    this.textStyle,
    this.hintStyle,
    this.validateFunction,
    this.onSaved,
    this.key,
    TextInputType? keyBoardType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: bottomMargin!),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
          color: textFieldColor,
        ),
        child: TextFormField(
          style: textStyle,
          key: key,
          obscureText: obscureText!,
          keyboardType: textInputType,
          validator: validateFunction,
          onSaved: onSaved,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,
            labelText: labelText,
            icon: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
