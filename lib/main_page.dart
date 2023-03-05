import 'dart:math';

import 'package:flutter/material.dart';

import 'package:inoffensive/navbar.dart';
import 'package:inoffensive/shopcart_page.dart';
import 'package:inoffensive/tree_page.dart';
import 'package:inoffensive/shop_page.dart';

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
                MaterialPageRoute(builder: (context) => shopcart_page()),
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
  bool _isOpen = false;
  bool _buttonEnabled = true;
  int se = 0;
  int counter = 1;
  String randomHood = "";

  void _toggleBox() {
    setState(() {
      _isOpen = !_isOpen;
    });
  }

  String randomhoodGenerator(){
    final random = Random();
    final randomNumber = random.nextInt(101);
    if(randomNumber >= 0 && randomNumber < 5){
      randomHood='images/hood2t.png';
    }
    else if(randomNumber >= 5 && randomNumber < 22.5){
      randomHood='images/hood1t.png';
    }
    else if(randomNumber >= 22.5 && randomNumber < 40){
      randomHood='images/hood6t.png';
    }
    else if(randomNumber >= 40 && randomNumber < 60){
      randomHood='images/hood5t.png';
    }
    else if(randomNumber >= 60 && randomNumber < 80){
      randomHood='images/hood4t.png';
    }
    else if(randomNumber >= 80){
      randomHood='images/hood3t.png';
    }
    return randomHood;
  }

  void _disableButton() {
    setState(() {
      randomhoodGenerator();
      counter = counter + 1;
      if(counter%2==0){
        _buttonEnabled = false;
        se = 2;
      }
      else{
        se = 0;
      }
      _toggleBox();
    });

    Future.delayed(Duration(seconds: se), () {
      setState(() {
        _buttonEnabled = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [const Padding(padding: EdgeInsets.only(top:20.0),
        child: Align( alignment: Alignment.center,
          child: Text(
            'LOOT CASE', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          ),
          const SizedBox(height: 20.0),
          GestureDetector(
            child: AnimatedContainer(
              duration:  Duration(milliseconds: 500), 
              width: 230.0, 
              height: 200.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: _isOpen ? AssetImage(randomHood) : AssetImage('images/hoodierelease.png'),),
                borderRadius: BorderRadius.circular(
                  20.0
                ),
              ),
            ),
          ),ElevatedButton(
            onPressed: _buttonEnabled ? _disableButton : null,
               child: SizedBox(
                width: 60, 
                child: Center(
                  child: Text(
                    _isOpen ? "Accept" : "50€",
                    )
                    ),
                    ),style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)))),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 30.0,),
                    child: Center(child: Container(width: double.infinity, height: 60,
                      color: Colors.white10,
                      child: Center(child: Text('AVAILABLE HOODIES',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),)
                      ),
                    ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(width: double.infinity, height: 127.9,
                      color: Color(0xFF333333),
                      child: Row(children: [
                        SizedBox(width: 15), 
                        Image.asset('images/hood2.png'),
                        SizedBox(width: 30), 
                        Image.asset('images/hood1.png'),
                        SizedBox(width: 30), 
                        Image.asset('images/hood6.png'),
                      ]),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Container(width: double.infinity, height: 127.9,
                      color: Color(0xFF333333),
                      child: Row(children: [
                        SizedBox(width: 15), 
                        Image.asset('images/hood5.png'),
                        SizedBox(width: 30), 
                        Image.asset('images/hood4.png'),
                        SizedBox(width: 30), 
                        Image.asset('images/hood3.png'),
                      ]),
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