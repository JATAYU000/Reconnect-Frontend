import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/models/institution.dart';
import 'package:reconnect/src/pages/add_university.dart';

SizedBox clollege_list(BuildContext context,final int scwidth,final int scheight){
      return SizedBox(
        width: scwidth * 0.852,
        height:scheight*0.430,
        child:ListView.builder(
          itemCount: InstitutionList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Color(ColorConstants.primary)),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  
                ),
                height: scheight*0.0686,
                child:GestureDetector(
                      onTap: () {
                        Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => AddUniversity(scwidth: scwidth, scheight: scheight))
                            );
                      },
                       child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset(InstitutionList[index].instituteIcon,width: scwidth*0.108,),
                          SizedBox(width: 10),
                          Text(InstitutionList[index].name,
                          style:  GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize:scheight*0.019,fontWeight: FontWeight.bold),
                          )
                    
                        ],
                  
                      ),
                    )
               
              
                ),
                
            );
              
          },
        )
        );
  
}
