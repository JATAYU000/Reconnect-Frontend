
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';

SizedBox Userinput(
  final String fieldtitle,
  final int screenheight,
  final int screenwidth,
  final TextEditingController control,
) {
  return SizedBox(
    height: screenheight*0.078,
    width: screenwidth*1.0,
    child: 
        TextField(
          controller: control,
          decoration: InputDecoration(
              // hintText: "Enter your email",
              labelText: fieldtitle,
              labelStyle: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: screenheight*0.023,),)
          ),
  );
}