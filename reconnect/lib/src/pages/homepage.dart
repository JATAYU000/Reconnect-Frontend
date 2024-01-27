import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/widgets/events.dart';
class HomePage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const HomePage({super.key, required this.scwidth,required this.scheight,});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: widget.scwidth*0.999,
          height: widget.scheight*0.999,
          child: Column(
            children: [
              Container(
                      height: widget.scheight*0.131,
                      width: widget.scwidth*0.79,
                      child: Image.asset(ImageConstants.LogoText),
                    ),
              SizedBox(height: widget.scheight*.019,),
              SizedBox(
                width: widget.scwidth * 0.852,
                height:widget.scheight*0.28,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0,color: Color(ColorConstants.primary)),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    height: widget.scheight*0.21,
                    child:Column(
                            children: [
                              SizedBox(height: widget.scheight*0.016,),
                              Container(
                                 width: widget.scwidth * 0.3,
                                height:widget.scheight*0.150,
                                child: Image.asset(InstitutionList[2].instituteIcon,width: widget.scwidth*0.108,),
                              ),
                              SizedBox(height: widget.scheight*0.015,),
                              Text(InstitutionList[2].name,
                              style:  GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize:widget.scheight*0.019,fontWeight: FontWeight.bold),
                              )
                            ],
                        )
                    ),
                )
              ),
              Row(
                  children: [
                    SizedBox(width: widget.scwidth*0.295,),
                    Container(
                      height: widget.scheight*0.058,
                      width:widget.scwidth*0.1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(ImageConstants.CollegeMail)),
                    ),
                    SizedBox(width: widget.scwidth*0.05,),
                    Container(
                      height: widget.scheight*0.058,
                      width:widget.scwidth*0.1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(ImageConstants.CollegeLink)),
                    ),
                    SizedBox(width: widget.scwidth*0.05,),
                    Container(
                      height: widget.scheight*0.058,
                      width:widget.scwidth*0.1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(ImageConstants.CollegeSite)),
                    ),
                  ]),
              Text(
                TextConstants.HomeEvent,
                style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
                ),
              SizedBox(
                width: widget.scwidth * 0.915,
                height:widget.scheight*0.20,
                child:ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: EventList.length,
                  itemBuilder: (context, index) {
                    return EventBox(context, widget.scwidth, widget.scheight,index,EventList,
                    () {   
                    }
                    );
        
                  }
                )
              ),
              Center(
                child: GestureDetector(
                onTap: () {

                },
                child: Container(
                  height:widget.scheight*0.0854,
                  child: Image.asset(ImageConstants.Logo)))
              ),
              Text(
                      "Create Event",
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,),
                      ),
              
            ]
            
            
          )
          ),
      )
    );
      
    
  }
}