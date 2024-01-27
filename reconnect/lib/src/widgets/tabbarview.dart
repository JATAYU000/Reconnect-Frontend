
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/models/participants.dart';

Expanded barview(
  final int scwidth,
  final int scheight,
  final Events event
){
  return Expanded(
            child: TabBarView(children: [
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(height:100),
                      SizedBox(width: 30,),
                      Text(
                        "Description",
                        style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.042,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        width: scwidth*0.154,
                        height: scheight*0.127,
                        child: Image.asset(ImageConstants.Description),
                      )
                    ],
                  ),
                  SizedBox(height:50),
                  Text(
                    event.description,
                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.033,),

                  )

                ],

              ),
             Column(),
              




              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width:50),
                        Text(
                          "Host",
                          style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.042,fontWeight: FontWeight.bold),
                          
                        ),
                        SizedBox(width:30),
                        Container(
                          width: scwidth*0.154,
                          height: scheight*0.107,
                          child: Image.asset(ImageConstants.Host),
                        )
                        
                      ],
                
                    ),
                    Row(
                      children: [
                        SizedBox(width:50),
                        Container(
                          width: scwidth*0.071,
                          height: scheight*0.038,
                          child: Image.asset(ImageConstants.NavProfile),
                        ),
                        SizedBox(width:15),
                        Text(
                          "Atharva",
                          style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.022,fontWeight: FontWeight.bold),
                
                        )
                      ],
                      
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width:50),
                        Text(
                          "Participants",
                          textAlign: TextAlign.start,
                              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.042,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: participantList.length,
                      itemBuilder: (context, index) {
                        Participants participant = participantList[index];
                        return Row(
                      children: [
                        SizedBox(width:50),
                        Container(
                          width: scwidth*0.071,
                          height: scheight*0.038,
                          child: Image.asset(participant.profileImage),
                        ),
                        SizedBox(width:15),
                        Text(
                          participant.name,
                          style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.022,fontWeight: FontWeight.bold),
                
                        )
                      ],
                      
                    );

                        
                      },
                    )
                
                
                  ],
                ),
              )
            ]),
          );
}