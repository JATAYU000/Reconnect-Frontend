import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/widgets/clg_list.dart';
import 'package:reconnect/src/widgets/input_field.dart';
import 'package:reconnect/src/widgets/navigationbar.dart';

class AddUniversity extends StatefulWidget {
  final int scwidth;
  final int scheight;
  final int index;
  const AddUniversity({super.key, required this.scwidth,required this.scheight,required this.index});

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
                    child: Image.asset(ImageConstants.LogoText),
                  ),
            SizedBox(height: widget.scheight*.019,),
            Text(
              TextConstants.AddUniString,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            SizedBox(height: widget.scheight*0.027,),
            SizedBox(
              width: widget.scwidth * 0.852,
              height:widget.scheight*0.10,
              child: clollege_list(context, widget.scwidth, widget.scheight,widget.index, InstitutionList,
              () {}
                  ),
            ),
            Container(
              height: widget.scheight*0.246,
              width: widget.scwidth*0.452,
              child: Image.asset(ImageConstants.AddUni),
            ),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Department (Abbr.)", widget.scheight, widget.scwidth, AddDept,false),
            SizedBox(height: widget.scheight*0.03,),
            Userinput("Graduation year", widget.scheight, widget.scwidth, AddYear,false),
            SizedBox(height: widget.scheight*0.02,),
            Center(
              child: IconButton(
                icon: Icon(Icons.add_circle),
                iconSize: widget.scheight*0.0514,
                color: Color(ColorConstants.primary),
                onPressed: () {
                  if(AddDept.text!="" && AddYear.text!=""){
                  Dashboard.add(Institution(
                    name: InstitutionList[widget.index].name, 
                    instituteIcon: InstitutionList[widget.index].instituteIcon,
                    dept: AddDept.text,
                     year: AddYear.text));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar(scwidth: widget.scwidth, scheight: widget.scheight, 
                    ))
                  );
                     }
                  
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