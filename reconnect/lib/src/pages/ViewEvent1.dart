import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/models/events.dart';
import 'package:reconnect/src/models/participants.dart';
import 'package:reconnect/src/models/queries.dart';
import 'package:reconnect/src/widgets/ReuseButton.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Event_Description extends StatefulWidget {

  final int scwidth;
  final int scheight;
  final Events event;
  const Event_Description({super.key, required this.scwidth,required this.scheight, required this.event});
  

  @override
  State<Event_Description> createState() => _Event_DescriptionState();
}

class _Event_DescriptionState extends State<Event_Description> {
    late String username;
  String regisbutton="Register";
  TextEditingController _updatetext = TextEditingController();
  @override
  void initState() {
    super.initState();
    _loadPreferences();
  }
  void _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString('username') ?? 'Shrivaths';
      // _islog =false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:SingleChildScrollView(
      child: DefaultTabController(
        length: 3,
        child: Container(
          width: widget.scwidth*0.999,
        height:widget.scheight*0.999,
        child: Column(
          children: [
            SizedBox(height: widget.scheight*0.04,),
            Container(
                        height: widget.scheight*0.131,
                        width: widget.scwidth*0.79,
                        child: Image.asset(ImageConstants.LogoText),
                      ),
                SizedBox(height: widget.scheight*.015,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: widget.scwidth*0.494,
                  height: widget.scheight*0.338,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:Row(
                          children: [
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text(
                             widget.event.heading,
                              style: GoogleFonts.sora(color: Color(ColorConstants.primary),fontSize: widget.scheight*0.038,fontWeight: FontWeight.bold),
                              ),  
                              SizedBox(height: 10,),
                                Text(
                            "Event Date:${widget.event.eventDate}",
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                                ),
                            Text(
                            "Department: ${widget.event.department}",
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                            ),
                            Text(
                            "Graduated:${widget.event.passOutYear}",
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                             ),
                            Container(
                              width: widget.scwidth*0.400,
                              child: Text(
                              "Location: ${widget.event.location}",
                              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                              
                              ),
                            ),
                            Text(
                            "Time: ${widget.event.eventTime}",
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.019,),
                              ),
                            ]
                            ),
                          ],
                        )
                      )
                      
                    ],
                  ),
                ),
                Container(
                  width: widget.scwidth*0.474,
                  height: widget.scheight*0.308,
                  child: Column(
                    children: [
                      Container(
                        width: widget.scwidth*0.285,
                      height: widget.scheight*0.175,
                      child: Image.asset(ImageConstants.Event),
        
                      ),
                      ReuseButton(regisbutton,widget.scwidth*0.127 , widget.scheight*0.209, () {
                        showDialog(context: context, builder: (context){
                          return Container(
                            child: AlertDialog(
                              title: Text("Are you sure?",
                              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.6),)),
                              actions: [
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                  setState(() {
                                    if (regisbutton=="Register" ){
                                      regisbutton="Unregister";  
                                      participantList.add(Participants(profileImage: ImageConstants.NavProfile, name: username));
                                      _updatetext.clear();
                                    }else if (regisbutton=="Unregister" ){
                                      regisbutton="Register";
                                      participantList.removeWhere((participant)=> participant.name==username);
                                    }
                                  });
                                }, child: Text("Yes",
                                style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),))),
                              TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: Text("No",
                                style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),)))  
                              ],
                            ),
                          );
                        });
                        
                      })
                    ],
        
                  ))
              ],
            ) ,
            Container(
              decoration: BoxDecoration(color: Color(ColorConstants.primary)),
              child: TabBar(
                tabs: [
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:16.0),
                    child: Tab(text: 'Details'),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:16.0),
                    child: Tab(text: 'Queries'),
                  ),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:5.0),
                    child: Tab(text: 'Participants'),
                  ),
                ],
                labelColor: Color(ColorConstants.primary),
                unselectedLabelColor: Colors.white,
                indicator:BoxDecoration(
                  color: Colors.white,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  
               
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(height:100),
                        SizedBox(width: 30,),
                        Text(
                          "Description",
                          style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20,),
                        
                      ],
                    ),
                    SizedBox(height:50),
                    Text(
                      widget.event.description,
                      style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,),
      
                    )
      
                  ],
      
                ),
               SingleChildScrollView(
                 child: Column(
                  children: [
                    SizedBox(height:20),
                    Container(
                      width: widget.scwidth*0.84,
                      height: widget.scheight*0.064,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Color(ColorConstants.primary),
                          width: 2,
                        )
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: widget.scwidth*0.2,
                            height: widget.scheight*0.038,
                            child: Image.asset(ImageConstants.NavProfile),
                          ),
                          Expanded(
                            child: TextField(
                              controller: _updatetext,
                              decoration: InputDecoration(
                                
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                
                                hintStyle: TextStyle(color: Color(ColorConstants.fontcolor).withOpacity(0.45)),
                                hintText: "Post your queries"
                              ),
                            ),
                          ),
                          FloatingActionButton(
                            
                            child: Icon(Icons.send),
                            backgroundColor: Color(ColorConstants.primary),
                            foregroundColor: Colors.white,
                            onPressed: () {
                              String eneteredtext = _updatetext.text;
                              if (eneteredtext.isNotEmpty){
                                setState((){
                                  QueryList.add(Queries(ProfileIcon: ImageConstants.NavProfile, PostDeatials: eneteredtext, username: username));
                                  _updatetext.clear();
                                });
                              }
                            },
                          )
                 
                        ],
      
                      )
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: QueryList.length,
                      itemBuilder: (context,index){
                        Queries query=QueryList[index];
                        return Container(
                          child: Column(children: [
                            SizedBox(width: 20,),
                            Row(
                              children: [
                                Container(
                              width: widget.scwidth*0.2,
                              height: widget.scheight*0.038,
                              child: Image.asset(query.ProfileIcon),
                            ),
                            Text(
                              query.username,
                              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.022,fontWeight: FontWeight.bold),
                            )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(width:widget.scwidth*0.18,),
                                Container(
                                  width: widget.scwidth*0.8,
                                  child: Text(
                                    query.PostDeatials,
                                    style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize:widget.scheight*0.021),
                                  
                                  ),
                                )
                              ],
                            )
                            
                          ],),
                        );
                      },
                    )
      
      
                  ],
                 ),
               ),
                
      
      
      
      
              SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 50,),
                          SizedBox(width:30),
                          Text(
                            "Host",
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,fontWeight: FontWeight.bold),
                            
                          ),
                        ],
                  
                      ),
                      Row(
                        children: [
                          SizedBox(width:30),
                          Container(
                            width: widget.scwidth*0.071,
                            height: widget.scheight*0.028,
                            child: Image.asset(ImageConstants.NavProfile),
                          ),
                          SizedBox(width:15),
                          Text(
                            "Atharva",
                            style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.021,),
                  
                          )
                        ],
                        
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width:30),
                          Text(
                            "Participants",
                            textAlign: TextAlign.start,
                                style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.023,fontWeight: FontWeight.bold),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 8,),
                      Container(
                        child: Column(
                          children: participantList.map((Participants participant){
                            return Row(
                          children: [
                            SizedBox(width:30),
                            Container(
                              width: widget.scwidth*0.071,
                              height: widget.scheight*0.038,
                              child: Image.asset(participant.profileImage),
                            ),
                            SizedBox(width:15),
                            Text(
                              participant.name,
                              style: GoogleFonts.sora(color: Color(ColorConstants.fontcolor).withOpacity(0.45),fontSize: widget.scheight*0.021),
                                          
                            )
                          ],
                          
                        );
                          }).toList(),
                      )
                      )
                  
                    ],
                  ),
                )
              ]),
          )
          ],
        )),
      ),
    ),
    );
  }
}
