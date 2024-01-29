import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';

class Notifications extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const Notifications({super.key, required this.scwidth,required this.scheight});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: widget.scwidth*0.999,
        height: widget.scheight*0.999,
        child:SingleChildScrollView(
          child: Column(
            children: [
            SizedBox(height: widget.scheight*0.04),
            Container(
              height: widget.scheight*0.131,
              width: widget.scwidth*0.79,
              child: Image.asset(ImageConstants.LogoText),
            ),
            SizedBox(height: widget.scheight*.028),
            Text(
              TextConstants.Notification,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary), fontSize: widget.scheight*0.042,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: widget.scheight*.03),
            ],
          )
        )   
      )
    );   
  }
}