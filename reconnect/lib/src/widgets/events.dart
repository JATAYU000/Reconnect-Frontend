import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/pages/ViewEvent1.dart';

Row EventBox(
BuildContext context,
final int scwidth,
final int scheight,
final int index,
final List<Events> list,
final VoidCallback callback,
) {
  print("datalen : ${list.length}");
  return Row(
    children: [
      GestureDetector(
        onTap: (){
          Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => Event_Description(scwidth: scwidth, scheight:scheight,event:list[index],))
                      );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(ColorConstants.secondary),
          ),
          height: scheight*0.25,
          width: scwidth*0.9,
          child: Column(
            children: [
              Container(
                height: scheight*0.082,
                width:scwidth*0.12,
                child: Image.asset(InstitutionList[2].instituteIcon),
              ),
              Container(
                height: scheight*0.038,
                width: scwidth*0.433,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Color(ColorConstants.fontcolor)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(child: Text(list[index].location,style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor), fontSize: scheight*0.015))),),
              SizedBox(height: 10,)  ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                height: scheight*0.038,
                width: scwidth*0.194,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Color(ColorConstants.fontcolor)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(child: Text(list[index].eventTime,style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor), fontSize: scheight*0.015))),),
                Container(
                height: scheight*0.038,
                width: scwidth*0.194,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Color(ColorConstants.fontcolor)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(child: Text(list[index].passOutYear,style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor), fontSize: scheight*0.015))),),
                Container(
                height: scheight*0.038,
                width: scwidth*0.194,
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Color(ColorConstants.fontcolor)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(child: Text(list[index].department,style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor), fontSize: scheight*0.015,),)),),
                ],
        
              )  
              
            ],
          )
        
        ),
      ),
      SizedBox(
        width: scwidth*0.03,
      )
    ],
  );

}