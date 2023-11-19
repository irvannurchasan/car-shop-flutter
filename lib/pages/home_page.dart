// ignore_for_file: unused_field

import 'package:car_shop/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {

  // untuk ngontrol 'bottom nav bar'
  int _selectedIndex = 0;

  // method will updated our selected index
  // ketika user mencet 'bottom bar'
  void NavigateBottomBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // page to display
  final List<Widget> _pages = [
    // shop page 
    const ShopPage(),

    // keranjang
    const CartPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) => NavigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding:  EdgeInsets.only(left: 12.0),
              child:  Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
        drawer: Drawer(
          backgroundColor: Colors.grey[700],
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [// logo 
              Column(
                  children: [
                DrawerHeader(child: Image.asset(
                'lib/images/sibiru.jpg' ,
                ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
              //DrawerHeader(child: Image.asset( color: Colors.white,))
              //other pages
              const Padding(
                padding:  EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home, 
                    color: Colors.white,
                    ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.only(left: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.info, 
                    color: Colors.white,
                    ),
                  title: Text(
                    'About',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

                 const Padding(
                padding:  EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.logout, 
                    color: Colors.white,
                    ),
                  title: Text(
                    'Log out',
                    style: TextStyle(color: Colors.white),
                    ),
                ),
              ),
            ],
          ),
        ),
        body: _pages[_selectedIndex],
    );
  }
}

// menit 12.15
//selesai // Buka Selanjutnya di shop_page.dart

