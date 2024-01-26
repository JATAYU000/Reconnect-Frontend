import 'package:flutter/material.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionWidget extends StatelessWidget {
  final int scwidth;
  final int scheight;
  final TextEditingController Description;
  const DescriptionWidget(
      {super.key,
      required this.scwidth,
      required this.scheight,
      required this.Description});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: scwidth * 0.77,
        height: scheight * 0.2,
        decoration: BoxDecoration(
          border: Border.all(color: Color(ColorConstants.primary), width: 2),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextField(
          controller: Description,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '  Description',
              hintStyle: GoogleFonts.sora(
                color: Color(ColorConstants.fontcolor).withOpacity(0.45),
                fontSize: scheight * 0.020,
              )),
          style: TextStyle(
            color: Color(ColorConstants.fontcolor),
            fontSize: 16.0,
          ),
        ));
  }
}
