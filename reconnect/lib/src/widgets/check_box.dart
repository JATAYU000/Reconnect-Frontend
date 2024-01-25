import 'package:flutter/material.dart';
import 'package:reconnect/src/constants/colors.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      activeColor: Color(ColorConstants.fontcolor).withOpacity(0.45),
      onChanged: (newBool){
        setState(() {
          isChecked = newBool!;
        });
      }
    );
  }
}