
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';

SizedBox Userinput(
  final String fieldtitle,
  final int screenheight,
  final int screenwidth,
  final TextEditingController control,
  final bool ispass,
) {
  return 
  SizedBox(
    height: screenheight*0.088,
    width: screenwidth*0.9,
    child: 
        TextField(
          obscureText: ispass,
          controller: control,
          decoration: InputDecoration(        
              enabledBorder: UnderlineInputBorder(      
                      borderSide: BorderSide(color: Color(ColorConstants.primary)),   
                      ),  
              focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(ColorConstants.primary)),
              ),

              labelText: fieldtitle,
              labelStyle: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: screenheight*0.023,),)
             ),
           );
}