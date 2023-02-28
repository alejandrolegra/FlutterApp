import 'package:flutter/material.dart';
import 'package:inoffensive/main_page.dart';
import 'package:inoffensive/shop_page.dart';

class tree_page extends StatefulWidget {
  @override
  _tree_pageState createState() => _tree_pageState();
}

class _tree_pageState extends State<tree_page> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: const Center(
        child: Text('Tree Page'),
      ),
      selectedIndex: _selectedIndex,
      onItemTapped: (int index) {
        setState(() {
          _selectedIndex = index;
        });

        switch (index) {
          case 0:
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => main_page()),
            );
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
