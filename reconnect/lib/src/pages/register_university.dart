import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/widgets/authenticate_button.dart';
import 'package:reconnect/src/widgets/input_field.dart';

class RegisterUni extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const RegisterUni({super.key, required this.scwidth,required this.scheight});

  @override
  State<RegisterUni> createState() => _RegisterUniState();
}

class _RegisterUniState extends State<RegisterUni> {
  final TextEditingController RegUni = TextEditingController();
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
                    child: Image.asset(ImageConstants.LogoText),
                  ),
            SizedBox(height: widget.scheight*.019,),
            Text(
              TextConstants.RegUniTitle,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Institution name", widget.scheight, widget.scwidth, RegUni,false),
            SizedBox(height: widget.scheight*0.04),
            Authbutton("Request", widget.scheight, widget.scwidth, () { print("Requested: !!");})
          ]
        )
        )
      )
    );
  }
}