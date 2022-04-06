
import 'package:flutter/material.dart';
import 'package:sahim/screens/orgs/orgs_page.dart';
import 'package:sahim/screens/profile/profile_page.dart';
import 'package:sahim/screens/programs/programs_page.dart';

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
<<<<<<< HEAD
    const HomePage(),
=======
    const ProfilePage(),
>>>>>>> bfab2fc13f0357aef1dfc432a1cd96f9d731db43
    
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
            icon: Icon(Icons.home),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nat),
            label: "الجمعيات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "المجالات",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "حسابي",
          ),
        ],
      ),
    );
  }
}
