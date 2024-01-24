import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';


SizedBox Authbutton(
  final String text,
  final int screenheight,
  final int screenwidth,
  final VoidCallback callback,
) {
  return SizedBox(
        height: screenheight*0.067,
        width: screenwidth*0.717,
        // width: (screenwidth-5)/2,
        child: TextButton(
          onPressed: callback,
          child: Container(
            height: screenheight*0.067,
            width: screenwidth*0.717,
              color: Color(ColorConstants.primary),
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(color: Colors.white, fontSize: screenheight*0.0264,),
                ),
              ),
        
          ),
        )
    );
}