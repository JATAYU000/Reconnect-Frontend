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
  int _index=1;
  late PageController _pagenavigation;

  @override
  void initState(){
    super.initState();
    _pagenavigation=PageController(initialPage: _index);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pagenavigation,
        onPageChanged: (index){
          setState(() {
            _index=index;
          });
        },
        children: [Profile(scwidth: widget.scwidth, scheight: widget.scheight),
        DashboardPage(scwidth: widget.scwidth, scheight: widget.scheight),
        Notifications(scwidth: widget.scwidth, scheight: widget.scheight)],
      ),
      bottomNavigationBar:  ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Color(ColorConstants.secondary),
            onTap:(index){
                _pagenavigation.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                
              
            } ,
            currentIndex: _index,
            items: const [
              
              BottomNavigationBarItem(
                
                icon: ImageIcon(AssetImage(ImageConstants.NavProfile)),
                label:"",
                
                
                
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage(ImageConstants.NavHome)),
                label: ""
              ),
              BottomNavigationBarItem(
                
                icon:ImageIcon(AssetImage(ImageConstants.NavNoti)),
                label: ""
              ),
            ],
            selectedFontSize: 0,
            selectedItemColor: Color(ColorConstants.primary),
            unselectedItemColor:Color(ColorConstants.fontcolor).withOpacity(0.45), 
            showSelectedLabels: false,
            showUnselectedLabels: false,


          ),
        ),
    );
      
    
  }
}