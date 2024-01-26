import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/models/institution.dart';

Container EventBox(
BuildContext context,
final int scwidth,
final int scheight,
final int index,
final List<Events> list,
final VoidCallback callback,
) {
  //need code to filter list with current college index
  return Container(
    height: scheight*0.25,
    width: scwidth*0.9,
    color: Color(ColorConstants.secondary),
    child: Column(
      children: [
        Container(
          height: scheight*0.082,
          width:scwidth*0.12,
          child: Image.asset(InstitutionList[2].instituteIcon,),
        ),
        Container(
          height: scheight*0.038,
          width: scwidth*0.433,
          decoration: BoxDecoration(
            border: Border.all(width: 2.0,color: Color(ColorConstants.fontcolor)),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Text("Delhi",style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor), fontSize: scheight*0.18)),),
      ],
    )
  );
}