import 'package:flutter/material.dart';
import 'package:inoffensive/main_page.dart';
import 'package:inoffensive/shop_page.dart';
import 'package:percent_indicator/percent_indicator.dart';

class tree_page extends StatefulWidget {
  @override
  _tree_pageState createState() => _tree_pageState();
}

class _tree_pageState extends State<tree_page> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'ALL THE MONEY YOU SPEND ON INOFFENSIVE WILL BE USED TO PLANT TREES.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  'OXYGEN THE EARTH',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Container(child: Image.asset('images/leaf.png')),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Expanded(
                    child: Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Positioned(
                      right: 0,
                      child: Image.asset('images/goal.png'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31.0),
                child: Center(
                  child: LinearPercentIndicator(
                    animation: true,
                    animationDuration: 2000,
                    lineHeight: 40,
                    width: 330,
                    percent: 0.7,
                    progressColor: Color(0xFF2CFF5A),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AT 1000',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'planted trees',
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            color: Color(0xFF2CFF5A),
                            blurRadius: 8,
                          )
                        ],
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'we will release...',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child:
                      Container(child: Image.asset('images/hoodierelease.png')),
                ),
              ),
            ],
          ),
        ),
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
