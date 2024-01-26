import 'package:flutter/material.dart';
import 'package:reconnect/src/constants/colors.dart';

class DescriptionWidget extends StatelessWidget {
  final int scwidth;
  final int scheight;
  final TextEditingController Description;
  final bool isEdit;
  const DescriptionWidget({super.key,required this.scwidth,required this.scheight,required this.Description, required this.isEdit});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: scwidth*0.77,
      height: scheight*0.2,
      decoration: BoxDecoration(
        border: Border.all(color: Color(ColorConstants.primary),width:2),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child:isEdit
      ?TextField(
        controller: Description,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: ''
        ),
      )
      :Text(
        Description.text,
        style: TextStyle(
          color: Color(ColorConstants.fontcolor),
          fontSize: 16.0,
        ),
      )
      
    );
  }
}