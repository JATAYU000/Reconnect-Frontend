import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/widgets/input_field.dart';

class AddUniversity extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const AddUniversity({super.key, required this.scwidth,required this.scheight});

  @override
  State<AddUniversity> createState() => _AddUniversityState();
}

class _AddUniversityState extends State<AddUniversity> {
  final TextEditingController AddDept = TextEditingController();
  final  TextEditingController AddYear = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: widget.scwidth*0.999,
        height: widget.scheight*0.999,
        child:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: widget.scheight*0.04,),
            Container(
                    height: widget.scheight*0.131,
                    width: widget.scwidth*0.79,
                    child: Image.asset(ImgaeConstants.LogoText),
                  ),
            SizedBox(height: widget.scheight*.019,),
            Text(
              TextConstants.AddUniString,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            SizedBox(height: widget.scheight*0.03,),
            Container(
              height: widget.scheight*0.246,
              width: widget.scwidth*0.452,
              child: Image.asset(ImgaeConstants.AddUni),
            ),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Department (Abbr.)", widget.scheight, widget.scwidth, AddDept),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Graduation year", widget.scheight, widget.scwidth, AddYear),
            SizedBox(height: widget.scheight*0.05,),
            Center(
              child: IconButton(
                icon: Icon(Icons.add_circle),
                iconSize: widget.scheight*0.0514,
                color: Color(ColorConstants.primary),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => RegisterUni(scwidth: widget.scwidth, scheight: widget.scheight))
                  // );
                }
              )
            ),
            Text(
                    TextConstants.AddUniSub,
                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,),
                    ),
          ]
        )
        )
      )
    );
  }
}