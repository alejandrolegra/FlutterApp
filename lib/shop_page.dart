import 'package:flutter/material.dart';
import 'package:inoffensive/main_page.dart';
import 'package:inoffensive/shop_page.dart';
import 'package:inoffensive/tree_page.dart';

class shop_page extends StatefulWidget {
  @override
  _shop_pageState createState() => _shop_pageState();
}

class _shop_pageState extends State<shop_page> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const Center(
        child: Text('Shop Page'),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => main_page()),
            );
            break;
          case 2:
            break;
        }
      },
    );
  }
}
