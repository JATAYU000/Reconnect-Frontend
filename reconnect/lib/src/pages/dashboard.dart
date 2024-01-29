import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/pages/homepage.dart';
import 'package:reconnect/src/pages/select_uni.dart';
import 'package:reconnect/src/widgets/clg_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardPage extends StatefulWidget {
  final int scwidth;
  final int scheight;
  const DashboardPage({super.key, required this.scwidth,required this.scheight,});

  @override
  State<DashboardPage> createState() => _DashboardState();
}

class _DashboardState extends State<DashboardPage> {



  late String username = "<none>";
  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }

  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? "none";
    });
  }
  
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
            Text(
              'Hello ${username}!',
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            Text(
              'Access your Alumni Networks here',
              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.47),fontSize: widget.scheight*0.02,),
              ),
            SizedBox(height: widget.scheight*0.03,),
            Container(
              height: widget.scheight*0.246,
              width: widget.scwidth*0.452,
              child: Image.asset(ImageConstants.DashImg),
            ),
            SizedBox(height: widget.scheight*0.03,),
            SizedBox(
              width: widget.scwidth * 0.852,
              height:widget.scheight*0.230,
              child:ListView.builder(
                itemCount: Dashboard.length,
                itemBuilder: (context, index) {
                  return clollege_list(context, widget.scwidth, widget.scheight,index,Dashboard,
                  () {
                    print("OOOOOOOOOOOOOOOOOOOO");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(scwidth: widget.scwidth, scheight: widget.scheight))
                    );
                  });
                }
              )
            ),
            SizedBox(height: widget.scheight*0.042,),
              FloatingActionButton.extended(
                backgroundColor: Color(ColorConstants.primary),
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                     MaterialPageRoute(builder: (context) =>SelectUni(scwidth: widget.scwidth, scheight: widget.scheight,)),
                     (route) => false
                   );
                 },
                
                label: Text("Add Institute",
                style: GoogleFonts.sora(color: Colors.white,)),
                icon: Icon(Icons.add,color: Colors.white),)
          ]
        )
        )
      ),
    );
  }
}