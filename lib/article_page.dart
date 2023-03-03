import 'package:flutter/material.dart';
import 'package:inoffensive/main_page.dart';
import 'package:inoffensive/shop_page.dart';
import 'package:inoffensive/tree_page.dart';

class article_page extends StatefulWidget {
  @override
  _article_pageState createState() => _article_pageState();
}

class _article_pageState extends State<article_page> {
  int _selectedIndex = 0;
  String _selectedSize = 'S';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 10),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/hoodie.png',
                  width: 207,
                  height: 289,
                ),
                SizedBox(height: 20),
                Text(
                  'BLACK HOODIE',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '\$75.00',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'MORE DETAILS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 95, 247, 189),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 19),
                    ChoiceChip(
                      label: Text(
                        'XS',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      selected: _selectedSize == 'XS',
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedSize = 'XS';
                        });
                      },
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.grey[700],
                    ),
                    SizedBox(width: 20),
                    ChoiceChip(
                      label: Text(
                        'S',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      selected: _selectedSize == 'S',
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedSize = 'S';
                        });
                      },
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.grey[700],
                    ),
                    SizedBox(width: 20),
                    ChoiceChip(
                      label: Text(
                        'M',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      selected: _selectedSize == 'M',
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedSize = 'M';
                        });
                      },
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.grey[700],
                    ),
                    SizedBox(width: 20),
                    ChoiceChip(
                      label: Text(
                        'L',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      selected: _selectedSize == 'L',
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedSize = 'L';
                        });
                      },
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.grey[700],
                    ),
                    SizedBox(width: 20),
                    ChoiceChip(
                      label: Text(
                        'XL',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      selected: _selectedSize == 'XL',
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedSize = 'XL';
                        });
                      },
                      selectedColor: Colors.blue,
                      backgroundColor: Colors.grey[700],
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                SizedBox(height: 40),
                Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 192,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 95, 247, 189),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          'ADD TO BAG',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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
