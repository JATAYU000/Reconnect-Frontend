import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:reconnect/src/constants/colors.dart";
import "package:reconnect/src/constants/image_strings.dart";
import "package:reconnect/src/constants/text_strings.dart";
import "package:reconnect/src/widgets/authenticate_button.dart";
class WelcomePage extends StatelessWidget {
  final int scwidth;
  final int scheight;
  const WelcomePage({super.key, required this.scwidth,required this.scheight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                    height: 10,
                  ),
            Container(
                    height: scheight*0.131,
                    width: scwidth*0.79,
                    child: Image.asset(ImgaeConstants.LogoText),
                  ),
            Text(
              TextConstants.WelcomeSubTitle,
              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.023,),
              ),
            Text(
              TextConstants.WelcomeTitle,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: scheight*0.042,fontWeight: FontWeight.bold),
              ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: scheight*0.422,
                    width: scwidth*0.796,
                    child: Image.asset(ImgaeConstants.welcomeImage),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Authbutton("Login", scheight, scwidth, () { print("pressed login!!!");}),
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
                    ,)
                  )


                ],
              )
            )
          ],
        )
        )
      
    );
  }
}