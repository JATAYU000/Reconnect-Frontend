import 'package:flutter/material.dart';
import 'package:reconnect/src/constants/colors.dart';
import 'package:reconnect/src/constants/image_strings.dart';
import 'package:reconnect/src/pages/dashboard.dart';
import 'package:reconnect/src/pages/notifications.dart';
import 'package:reconnect/src/pages/profile.dart';

class NavBar extends StatefulWidget {
  final int scwidth;
  final int scheight;
  NavBar({super.key, required this.scwidth,required this.scheight});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _index=0;
  late List<Widget> screen;

  @override
  void initState(){
    super.initState();
    _index=1;
    screen=[
    Profile(scwidth: widget.scwidth, scheight: widget.scheight),
    DashboardPage(scwidth: widget.scwidth, scheight: widget.scheight),
    Notifications(scwidth: widget.scwidth, scheight: widget.scheight)
    
  ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_index],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(ColorConstants.primary),
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Color(ColorConstants.secondary),
            onTap:(index){
              setState(() {
                _index=index;
              });
            } ,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(ImageConstants.NavProfile),
                color: Color(ColorConstants.primary)),
                label: ""
                
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(ImageConstants.NavHome),
                color: Color(ColorConstants.primary)),
                label: ""
              ),
              BottomNavigationBarItem(
                
                icon:ImageIcon(AssetImage(ImageConstants.NavNoti),
                color: Color(ColorConstants.primary)),
                label: ""
              ),
            ],
          ),
        ),
      ),
    );
  }
}