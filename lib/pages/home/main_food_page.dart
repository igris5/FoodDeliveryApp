import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp2/cart/cart.dart';
import 'package:foodapp2/pages/home/main_page.dart';
import 'package:foodapp2/profile/profilescreen.dart';


import 'package:foodapp2/utilites/dimension.dart';
import 'package:foodapp2/widgets/big_text.dart';
import 'package:foodapp2/widgets/small_text.dart';

import '../../utilites/colors.dart';

import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {

  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
     MainPage(),
    CartScreen(),
   ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
       bottomNavigationBar: Container(
       
      

        
        height: 65,
        
         child: BottomNavigationBar(
          
          backgroundColor: AppColors.mainColor,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
             
        
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout_outlined),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
      ),
       ),
       body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ), 
     
    );
  }
}
