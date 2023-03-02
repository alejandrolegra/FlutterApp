import 'package:flutter/material.dart';
import 'package:inoffensive/cartlist_page.dart';
import 'package:inoffensive/navbar.dart';
import 'package:inoffensive/shopcart_page.dart';
import 'package:inoffensive/tree_page.dart';
import 'package:inoffensive/shop_page.dart';
import 'package:inoffensive/login_page.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomScaffold({
    required this.body,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Image.asset(
            'images/logo.png',
            height: 600.0,
            width: 200.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => cartlist_page()),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 20,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent, size: 40),
        selectedItemColor: Colors.amberAccent,
        iconSize: 30,
        backgroundColor: Colors.grey[800],
        mouseCursor: SystemMouseCursors.grab,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.forest),
            label: 'TREE',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.casino_rounded),
            label: 'ROULETTE',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.shopping_bag),
            label: 'SHOP',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
      body: body,
    );
  }
}

class main_page extends StatefulWidget {
  @override
  _main_pageState createState() => _main_pageState();
}

class _main_pageState extends State<main_page> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const Center(
        child: Text('Roulete Page'),
      ),
      selectedIndex: _selectedIndex,
      onItemTapped: (int index) {
        setState(() {
          _selectedIndex = index;
        });

        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => tree_page()),
            );
            break;
          case 1:
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => shop_page()),
            );
            break;
        }
      },
    );
  }
}
