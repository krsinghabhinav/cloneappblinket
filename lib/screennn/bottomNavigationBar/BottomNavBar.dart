import 'package:cloneappblinket/screennn/CategoriesPage/screen/CategoriesPage.dart';
import 'package:cloneappblinket/screennn/DistrictPage/screen/DistrictPage.dart';
import 'package:cloneappblinket/screennn/OrderAgainPage/screen/OrderAgainPage.dart';
import 'package:cloneappblinket/screennn/PrintPage/screen/PrintPage.dart';
import 'package:cloneappblinket/screennn/page/homeScreen.dart';
import 'package:cloneappblinket/screennn/page/loginScreen.dart';
import 'package:cloneappblinket/screennn/page/otp_screen.dart';
import 'package:flutter/material.dart';

import '../page/registrataionScreen.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    OrderAgainPage(),
    CategoriesPage(),
    PrintPage(),
    DistrictPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home, color: Colors.amber),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Order Again',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.print_outlined),
              label: 'Print',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.purple[500],
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'district',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
