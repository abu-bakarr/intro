import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InputField extends StatelessWidget {
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
  InputField({
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
  });
  @override
  Widget build(BuildContext context) {
    obscureText = false;
    return Container(
      margin: EdgeInsets.all(10),
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
            border: OutlineInputBorder(),
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
