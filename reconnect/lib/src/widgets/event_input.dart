
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';

SizedBox Userinput(
  final String fieldtitle,
  final double screenheight,
  final double screenwidth,
  final TextEditingController control,
) {
  return SizedBox(
    height: screenheight,
    width: screenwidth,
    child: 
        TextField(
          controller: control,
          decoration: InputDecoration(        
              enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Color(ColorConstants.primary)),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(ColorConstants.primary)),
              ),

              labelText: fieldtitle,
              labelStyle: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize:16,),)
             ),
           );
}