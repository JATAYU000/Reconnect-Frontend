import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/models/events.dart';
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
            color: Color(ColorConstants.secondary),
            borderRadius:BorderRadius.circular(10)
          ),
          width: scwidth*0.55,
          child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  list[index].heading,
                  style:GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.7),fontWeight: FontWeight.bold) ,
                ),
                ),
              SizedBox(height: 5),  
              Container(
                child: Row(
                  children: [
                    SizedBox(width: scwidth*0.030,
                    height: 0.03,),
                    Icon(Icons.location_on,
                    color: Color(ColorConstants.fontcolor).withOpacity(0.7),
                    ),
                    SizedBox(width: 5,),
                    Text(list[index].location,style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.5), fontSize: scheight*0.015))
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: scwidth*0.030,),
                    Icon(Icons.calendar_month,color: Color(ColorConstants.fontcolor).withOpacity(0.7),),
                    SizedBox(width: 5,),
                    Text('${list[index].eventDate} , ${list[index].eventTime}',style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.5), fontSize: scheight*0.015))
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: scwidth*0.030,),
                    Icon(Icons.school,color: Color(ColorConstants.fontcolor).withOpacity(0.7),),
                    SizedBox(width: 5,),
                    Text('Batch of ${list[index].passOutYear}',style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.5), fontSize: scheight*0.015))
                  ],
                ),
              ),
              Container(
                
                child: Row(
                  children: [
                    SizedBox(width: scwidth*0.030,),
                    Icon(Icons.auto_stories,color: Color(ColorConstants.fontcolor).withOpacity(0.7),),
                    SizedBox(width: 5,),
                    Text(list[index].department,style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.5), fontSize: scheight*0.015)),
                   
                  ],    
                ),
              ),
              SizedBox(height: scheight*0.030,),
              Text(
                'Click for more details',
                style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor), fontSize: scheight*0.015)

              ) 
            ],
          )
        ),
      ),
        SizedBox(
        width: scwidth*0.05,)
      
    ]
  ) ;  
        
        
    

}