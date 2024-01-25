// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/pages/signup.dart';
import 'package:reconnect/src/widgets/authenticate_button.dart';
import 'package:reconnect/src/widgets/check_box.dart';
import 'package:reconnect/src/widgets/input_field.dart';

class LoginPage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  
  
  LoginPage({super.key,required this.scwidth,required this.scheight});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user_controller = TextEditingController();

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
              TextConstants.WelcomeBack,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary), fontSize: widget.scheight*0.042,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: widget.scheight*.03),
            Userinput('Username', widget.scheight , widget.scwidth, user_controller),
            SizedBox(height: widget.scheight*.03),
            Userinput('Password', widget.scheight , widget.scwidth, user_controller),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  
                  children: [
                    CheckBox(),
                    Text(
                      TextConstants.rememberme,
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.0190)
                    ),
                  ],
                ),
                TextButton(
                  child: Text(
                    TextConstants.forgotpass,
                    style: GoogleFonts.sora(color: Color(ColorConstants.primary), fontSize: widget.scheight*0.0190,fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                
                  },
                ),
              ],
            ),
            Authbutton("Login", widget.scheight, widget.scwidth, () { 
              print("pressed login!!!");
            }),
            SizedBox(height: widget.scheight*.013),
            Container(
              height: widget.scheight*0.241,
              width: widget.scwidth*0.99,
              child: Image.asset(ImageConstants.login_page),
            ),   
            SizedBox(height: widget.scheight*.015,),    
            SizedBox(
              width: widget.scwidth*0.717,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    TextConstants.WelcomeAccount,
                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                    ),
                  GestureDetector(
                    onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp(scwidth: widget.scwidth, scheight: widget.scheight))
                    );
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.019,fontWeight: FontWeight.bold),
                    ),
                  ),
                ]
              ),
            )   
          ],
        ),
        ),
        
      ),
    );
  }
}