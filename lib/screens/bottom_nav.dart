
import 'package:flutter/material.dart';
import 'package:sahim/screens/orgs/orgs_page.dart';
import 'package:sahim/screens/profile/profile_page.dart';
import 'package:sahim/screens/programs/programs_page.dart';
import 'package:sahim/theme/sahim_icons.dart';

import 'home/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

 /* String ide;
  String clientnumber;
  BottomNav({required this.ide,required this.clientnumber});*/
  @override
  _BottomNav createState() => _BottomNav();
}

class _BottomNav extends State<BottomNav> {
  int _currentIndex = 0;
 

  @override
  Widget build(BuildContext context) {
     final List<Widget> _pages = [
    const HomePage(),
   // Pagemap(ide:widget.ide ,clientnumber: widget.clientnumber,),
    const ProgramPage(),
    const OrgsPage(),
    const ProfilePage(),


    
  ];
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const[
          BottomNavigationBarItem(
            icon: Icon(SahimIcons.shelter__charity__volunteer__social),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(SahimIcons.people__love__family__happy),
            label: "الجمعيات",
          ),
          BottomNavigationBarItem(
            icon: Icon(SahimIcons.charity__care__volunteer__support),
            label: "المجالات",
          ),
          BottomNavigationBarItem(
            icon: Icon(SahimIcons.volunteer__charity__community__compassion),
            label: "حسابي",
          ),
        ],
      ),
    );
  }
}
