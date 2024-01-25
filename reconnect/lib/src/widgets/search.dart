import 'package:flutter/material.dart';
import 'package:reconnect/src/constants/colors.dart';
final TextEditingController _searchController = TextEditingController();

SizedBox Search(
  final int scwidth,
  final int scheight
){
  return SizedBox(
    width: scwidth * 0.852,
    height:scheight*0.067,
    child: TextField(
      controller: _searchController,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(ColorConstants.primary),
          width:2.0,
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Color(ColorConstants.primary),
          width:2.0,
          )
        ),
        
        hintText: "Search your institute",
        suffixIcon:IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            
          },
        )
        
      ),
    ),
  );
}
