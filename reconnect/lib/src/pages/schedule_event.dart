// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/widgets/event_input.dart';
import 'package:reconnect/src/widgets/event_description.dart';
import 'package:reconnect/src/widgets/ReuseButton.dart';


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
            ReuseButton("Schedule", widget.scheight*0.07 , widget.scwidth*0.54,() { }),
          ],
                ),
               ),
        )
    ) 
   );
  }
}