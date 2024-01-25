import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/models/institution.dart';

Padding clollege_list(BuildContext context,final int scwidth,final int scheight,final int index,final List<Institution> list,final VoidCallback callback,){
     
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2.0,color: Color(ColorConstants.primary)),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  
                ),
                height: scheight*0.0686,
                child:GestureDetector(
                      onTap:  callback,
                       child: Row(
                        children: [
                          SizedBox(width: 10),
                          Image.asset(list[index].instituteIcon,width: scwidth*0.108,),
                          SizedBox(width: 10),
                          Text(list[index].name,
                          style:  GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize:scheight*0.019,fontWeight: FontWeight.bold),
                          )
                        ],
                  
                      ),
                    )
               
              
                ),
                
            );
  
}
