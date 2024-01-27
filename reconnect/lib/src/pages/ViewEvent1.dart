import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/widgets/ReuseButton.dart';
import 'package:reconnect/src/widgets/tabbarview.dart';
class Event_Description extends StatefulWidget {

  final int scwidth;
  final int scheight;
  final Events event;
  const Event_Description({super.key, required this.scwidth,required this.scheight, required this.event});


  @override
  State<Event_Description> createState() => _Event_DescriptionState();
}

class _Event_DescriptionState extends State<Event_Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:DefaultTabController(
      length: 3,
      child: Container(
        width: widget.scwidth*0.999,
      height:widget.scheight*0.999,
      child: Column(
        children: [
          SizedBox(height: widget.scheight*0.04,),
          Container(
                      height: widget.scheight*0.131,
                      width: widget.scwidth*0.79,
                      child: Image.asset(ImageConstants.LogoText),
                    ),
              SizedBox(height: widget.scheight*.028,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: widget.scwidth*0.474,
                height: widget.scheight*0.308,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      TextConstants.ViewEvent,
                      style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
                    ),
                    Text(
                    widget.event.heading,
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Event Date:${widget.event.date}",
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                    ),
                    Text(
                      "Department: ${widget.event.dept}",
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                    ),
                    Text(
                      "Pass Out Year:${widget.event.year}",
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                    ),
                    Text(
                      "Location: ${widget.event.location}",
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                    ),
                    Text(
                      "Time: ${widget.event.time}",
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                    ),
                  ],
                ),
              ),
              Container(
                width: widget.scwidth*0.474,
                height: widget.scheight*0.308,
                child: Column(
                  children: [
                    Container(
                      width: widget.scwidth*0.285,
                    height: widget.scheight*0.175,
                    child: Image.asset(ImageConstants.Event),
      
                    ),
                    ReuseButton("Register",widget.scwidth*0.127 , widget.scheight*0.209, () { })
                  ],
      
                ))
            ],
          ) ,
          Divider(
            color: Color(ColorConstants.primary),
            thickness: 2,
          ),
          TabBar(
            tabs: [
              Padding(
                padding:EdgeInsets.symmetric(horizontal:16.0),
                child: Tab(text: 'Details'),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:16.0),
                child: Tab(text: 'Queries'),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:8.0),
                child: Tab(text: 'Participants'),
              ),
            ],
            labelColor: Color(ColorConstants.primary),
            unselectedLabelColor: Color(ColorConstants.primary),
            indicator:BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border:Border.all(
                color:  Color(ColorConstants.primary),
                width: 2,
              ),
              
            ),
          ),
          barview(widget.scwidth, widget.scheight,widget.event)
        ],
      )),
    ),
    );
  }
}