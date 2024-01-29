import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/widgets/events.dart';
import 'package:reconnect/src/pages/schedule_event.dart';

class HomePage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  
  
  const HomePage({super.key, required this.scwidth,required this.scheight,});

  @override     
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Events> UpdatedEvents = [];

   @override
  void initState() {
    super.initState();
      _load();
    
    
  }
  _load(){
    getData().then((data){
      // print('Length:  ${UpdatedEvents[2].heading}');
      return data;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: widget.scwidth*1,
          height: widget.scheight*0.999,
          child: Column(
            children: [
              Container(
                      height: widget.scheight*0.101,
                      width: widget.scwidth*0.79,
                      child: Image.asset(ImageConstants.LogoText),
                    ),
              SizedBox(height: widget.scheight*.015,),
              SizedBox(
                width: widget.scwidth * 0.852,
                height:widget.scheight*0.33,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child:Column(
                            children: [
                              SizedBox(height: widget.scheight*0.016,),
                              Container(
                                 width: widget.scwidth * 0.3,
                                height:widget.scheight*0.140,
                                child: Image.asset(InstitutionList[2].instituteIcon,width: widget.scwidth*0.108,),
                              ),
                              SizedBox(height: widget.scheight*0.015,),
                              Text(InstitutionList[2].name,
                              style:  GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize:widget.scheight*0.019,fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: widget.scheight*0.015,),
                              Row(
                  children: [
                    SizedBox(width: widget.scwidth*0.265,),
                    Container(
                      height: widget.scheight*0.038,
                      width:widget.scwidth*0.08,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(ImageConstants.CollegeMail)),
                    ),
                    SizedBox(width: widget.scwidth*0.05,),
                    Container(
                      height: widget.scheight*0.038,
                      width:widget.scwidth*0.08,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(ImageConstants.CollegeLink)),
                    ),
                    SizedBox(width: widget.scwidth*0.05,),
                    Container(
                      height: widget.scheight*0.038,
                      width:widget.scwidth*0.08,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(ImageConstants.CollegeSite)),
                    ),
                  ])
                            ],
                        )
                    ),
                ),
              
              
              Text(
                TextConstants.HomeEvent,
                style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
                ),
              SizedBox(height: widget.scheight*0.042,),  
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: widget.scwidth * 1,
                      height:widget.scheight*0.25,
                      child:ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: EventList.length,
                        itemBuilder: (context, index) {
                          print("this is the problem${UpdatedEvents.length}");
                          return EventBox(context, widget.scwidth, widget.scheight,index,EventList,
                          () {}
                          );
                            
                        }
                      )
                    ),
                  ],
                ),
              ),
              SizedBox(height: widget.scheight*0.042,),
              FloatingActionButton.extended(
                backgroundColor: Color(ColorConstants.primary),
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                     MaterialPageRoute(builder: (context) =>ScheduleEvent(scwidth: widget.scwidth, scheight: widget.scheight,)),
                     (route) => false
                   );
                 },
                
                label: Text("Create Event",
                style: GoogleFonts.sora(color: Colors.white,)),
                icon: Icon(Icons.add,color: Colors.white),)
            ]
            
            
          )
          ),
      )
    );
      
    
  }
}