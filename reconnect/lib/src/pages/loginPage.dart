// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/widgets/authenticate_button.dart';
import 'package:reconnect/src/widgets/check_box.dart';
import 'package:reconnect/src/widgets/input_field.dart';

class LoginPage extends StatelessWidget {
  final int scwidth;
  final int scheight;
  
  
  LoginPage({super.key,required this.scwidth,required this.scheight});
  @override
  Widget build(BuildContext context) {
    TextEditingController user_controller = TextEditingController();
    return Scaffold(
      body: Container(
        width: scwidth*0.999,
        height: scheight*0.999,
        child: Column(
          children: [
            SizedBox(height: scheight*0.04),
            Container(
              height: scheight*0.131,
              width: scwidth*0.79,
              child: Image.asset(ImgaeConstants.LogoText),
            ),
            SizedBox(height: scheight*.028),
            Text(
              TextConstants.WelcomeBack,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary), fontSize: scheight*0.042,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: scheight*.028),
            Userinput('Username', scwidth , scheight, user_controller),
            SizedBox(height: scheight*.028),
            Userinput('Password', scwidth , scheight, user_controller),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  
                  children: [
                    CheckBox(),
                    Text(
                      TextConstants.rememberme,
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.0190)
                    ),
                  ],
                ),
                TextButton(
                  child: Text(
                    TextConstants.forgotpass,
                    style: GoogleFonts.sora(color: Color(ColorConstants.primary), fontSize: scheight*0.0190,fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                
                  },
                ),
              ],
            ),
            Authbutton("Login", scheight, scwidth, () { 
              print("pressed login!!!");
            }),
            SizedBox(height: scheight*.013),
            Container(
              height: scheight*0.241,
              width: scwidth*0.99,
              child: Image.asset(ImgaeConstants.login_page),
            ),   
            SizedBox(height: scheight*.015,),    
            SizedBox(
              width: scwidth*0.717,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    TextConstants.WelcomeAccount,
                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.019,),
                    ),
                  GestureDetector(
                    onTap: () {
                    print('Text Clicked');
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: scheight*0.019,fontWeight: FontWeight.bold),
                    ),
                  ),
                ]
              ),
            )   
          ],
        ),
      ),
    );
  }
}