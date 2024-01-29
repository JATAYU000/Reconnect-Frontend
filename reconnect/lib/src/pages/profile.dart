import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/constants/text_strings.dart';
import 'package:reconnect/src/widgets/ReuseButton.dart';
import 'package:reconnect/src/widgets/description.dart';

class Profile extends StatefulWidget {

  final int scwidth;
  final int scheight;
  const Profile({super.key,required this.scwidth,required this.scheight});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   File? _selectedimage;
   TextEditingController _descriptionController = TextEditingController();
  bool _isEditingDescription = false;
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
              TextConstants.Profile,
              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
              width: widget.scwidth*0.20,
              height: widget.scheight*0.15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(ColorConstants.primary),width: 2),
              ),
              child:_selectedimage!=null
              ?Container(
              width: widget.scwidth*0.20,
              height: widget.scheight*0.15,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: FileImage(_selectedimage!),
                fit: BoxFit.cover)
                
              ),
              )
              :Image.asset(
                ImageConstants.NavProfile,
                width: widget.scwidth*0.20,
                height: widget.scheight*0.15,
              )
              ),
              ReuseButton("Upload Image", widget.scheight*0.08 , widget.scwidth*0.446,pickimage)
              
              ],
            ),
              Text(
                TextConstants.About,
                textAlign: TextAlign.left,
                style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.020,),
              ),
              DescriptionWidget(scwidth: widget.scwidth, scheight: widget.scheight, Description: _descriptionController, isEdit: _isEditingDescription),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isEditingDescription = !_isEditingDescription;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(ColorConstants.primary)
                ),
                child: Text(_isEditingDescription?'Save':'Edit',
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
          ]
        )
        )
      )
    );           
  }

  Future pickimage() async {
  final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (returnedImage==null){
    return;
  }
  setState((){
    _selectedimage=File(returnedImage.path);
  });
}

}

