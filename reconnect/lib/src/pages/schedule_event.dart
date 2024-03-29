// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/pages/homepage.dart';
import 'package:reconnect/src/widgets/event_input.dart';
import 'package:reconnect/src/widgets/event_description.dart';
import 'package:reconnect/src/widgets/ReuseButton.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ScheduleEvent extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const ScheduleEvent({super.key, required this.scwidth,required this.scheight,});

  @override
  State<ScheduleEvent> createState() => _ScheduleEvent();
}

class _ScheduleEvent extends State<ScheduleEvent> {
  TextEditingController heading_controller = TextEditingController();
  TextEditingController pass_controller = TextEditingController();
  TextEditingController department_controller = TextEditingController();
  TextEditingController date_controller = TextEditingController();
  TextEditingController location_controller = TextEditingController();
  TextEditingController time_controller = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  late String username = "<none>";
  @override
  void initState() {
    super.initState();
    
    _loadPreferences();
  }

  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? "none";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
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
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: widget.scheight*.025,),
              Text(
                TextConstants.ScheduleEvent,
                style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.035,fontWeight: FontWeight.bold),
                ),
                Container(
                        height: widget.scheight*0.14,
                        width: widget.scwidth*0.27,
                        child: Image.asset(ImageConstants.Description_Event),
            ),
              ],
                ),
              Userinput('Heading', widget.scheight*0.12 , widget.scwidth*0.835, heading_controller),

              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Userinput('Pass out year', widget.scheight*0.12 , widget.scwidth*0.43, pass_controller),
                  Userinput('Department', widget.scheight*0.12 , widget.scwidth*0.33, department_controller),
                 ],
              ),
      
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                  Userinput('Event date', widget.scheight*0.12 , widget.scwidth*0.3, date_controller),
                  Userinput('Location', widget.scheight*0.12 , widget.scwidth*0.27, location_controller),
                  Userinput('Time', widget.scheight*0.12 , widget.scwidth*0.135, time_controller),
                 ],         
            ),
            SizedBox(height: widget.scheight*.02,),
            DescriptionWidget(scwidth: widget.scwidth, scheight: widget.scheight, Description: _descriptionController),  
            SizedBox(height: widget.scheight*.01,),
            ReuseButton("Schedule", widget.scheight*0.07 , widget.scwidth*0.54,() { 

              if(heading_controller.text!='' && pass_controller.text!='' && location_controller.text!='' && date_controller.text!='' && _descriptionController.text!='' && time_controller.text!=''){
              //   FetchEvent(2,heading_controller.text, username, pass_controller.text, 
              //  location_controller.text, 
              //  date_controller.text, 
              //  _descriptionController.text, 
              //  department_controller.text, 
              //  time_controller.text
              //   );

              
                EventList.add(Events(colindex: 2,
               heading: heading_controller.text, 
               username: username, 
               passOutYear: pass_controller.text, 
               location: location_controller.text, 
               eventDate: date_controller.text, 
               description: _descriptionController.text, 
               department: department_controller.text, 
               eventTime: time_controller.text));
               Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(scwidth: widget.scwidth, scheight: widget.scheight,)),

                      (route) => false,
                    );

              } else {
                showDialog(context: context, builder: (context){
                          return Container(
                            child: AlertDialog(
                              title: Text("Please fill in the details",
                              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.6), fontSize: widget.scheight*0.02)),
                              
                            ),
                          );
                        });
              }
              
            }),
          ],
                ),
               ),
        )
    ) 
   );
  }
}