import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';


SizedBox ReuseButton(
  final String text,
  final double screenheight,
  final double screenwidth,
  final VoidCallback callback,
) {
  return SizedBox(
        height: screenheight,
        width: screenwidth,
        child: TextButton(
          onPressed: callback,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(ColorConstants.primary),
            ),
            height: screenheight,
            width: screenwidth,
              child: Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(color: Colors.white, fontSize: 17,),
                ),
              ),
        
          ),
        )
    );
}