import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_applains/cart/cart.dart';

import 'package:home_applains/favorate/favorate.dart';
import 'package:home_applains/home/home.dart';
import 'package:home_applains/person/person.dart';
import 'package:home_applains/scan/scan.dart';


class Bottoms extends StatefulWidget {
  const Bottoms({super.key});

  @override
  State<Bottoms> createState() => _BottomsState();
}

class _BottomsState extends State<Bottoms> {


// GlobalKey<CurvedNavigationBarState> _bottomnav = GlobalKey();
  // final CurvedNavigationBarState? navbarstate = _bottomnav.currentState;

 List _pages = [
    Home(),
    Favorate(),
    Scan(),
    Cart(),
    Person(),
    
  ];
  
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      backgroundColor: const Color.fromARGB(255, 219, 215, 215),
      bottomNavigationBar: CurvedNavigationBar(
        // key: _bottomnav,
        
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        // letIndexChange: (index) => true ,
        buttonBackgroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        animationDuration: const Duration(milliseconds: 300),
        items:  [
          Image.asset("asset/home.png"),
          Image.asset("asset/heart.png"),
          Image.asset("asset/scan.png"),
          Image.asset("asset/cart.png"),
          Image.asset("asset/Account.png"),
        ],
      ),
    );
  }
}
