import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:reconnect/src/constants/colors.dart";
import "package:reconnect/src/constants/image_strings.dart";
import "package:reconnect/src/constants/text_strings.dart";
import "package:reconnect/src/pages/loginPage.dart";
import "package:reconnect/src/widgets/authenticate_button.dart";
class WelcomePage extends StatelessWidget {
  final int scwidth;
  final int scheight;
  WelcomePage({super.key, required this.scwidth,required this.scheight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: scwidth*0.999,
        height: scheight*0.999,

        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: scheight*0.04,),
            Container(
                    height: scheight*0.131,
                    width: scwidth*0.79,
                    child: Image.asset(ImgaeConstants.LogoText),
                  ),
            SizedBox(height: scheight*.028,),
            Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    TextConstants.WelcomeSubTitle,
                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: scheight*0.023,),
                    ),
                  Text(
                    TextConstants.WelcomeTitle,
                    style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: scheight*0.042,fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
            SizedBox(height: scheight*.038,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: scheight*0.422,
                    width: scwidth*0.796,
                    child: Image.asset(ImgaeConstants.welcomeImage),
                  ),
                  SizedBox(height: scheight*.038,),
                  Authbutton("Login", scheight, scwidth, () { 
                    print("pressed login!!!");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage(scwidth: scwidth, scheight: scheight))
                    );
                  }),
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