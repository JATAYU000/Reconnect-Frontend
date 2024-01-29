// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/globals.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/pages/dashboard.dart';
import 'package:reconnect/src/pages/signup.dart';
import 'package:reconnect/src/widgets/authenticate_button.dart';
import 'package:reconnect/src/widgets/check_box.dart';
import 'package:reconnect/src/widgets/input_field.dart';
import 'package:reconnect/src/models/user.dart';
import 'package:reconnect/src/shared_pref/shared_prefs.dart' as sp;



class LoginPage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  
  
  LoginPage({super.key,required this.scwidth,required this.scheight});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user_controller = TextEditingController();
  TextEditingController pass_controller = TextEditingController();
  TextEditingController email_controller = TextEditingController();
  late Future<String> token;
  bool success =false;
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
            SizedBox(height: widget.scheight*.01),
            Userinput('Username', widget.scheight , widget.scwidth, user_controller, false),
            SizedBox(height: widget.scheight*.01),
            Userinput('Email', widget.scheight , widget.scwidth, email_controller,false),
            SizedBox(height: widget.scheight*.01),
            Userinput('Password', widget.scheight , widget.scwidth, pass_controller,true),
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
            Authbutton("Login", widget.scheight, widget.scwidth, ()  { 
              print("pressed login!!!${isLoggedIn}");
              setState(() async {
                try{
                  token = fetchUserPost(user_controller.text, email_controller.text, pass_controller.text);
                  print(await token);
                sp.addString('token', await token);
                sp.addString('username', user_controller.text);
                sp.addString('email', email_controller.text);
                sp.addString('password', pass_controller.text);
                success = true;
                 Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage(scwidth: widget.scwidth, scheight: widget.scheight))
                    );
                } catch(e) {print(e);};
              });

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