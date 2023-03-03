import 'package:flutter/material.dart';
import 'package:inoffensive/main_page.dart';
import 'package:inoffensive/shop_page.dart';
import 'package:inoffensive/shopcart_page.dart';
import 'package:inoffensive/tree_page.dart';

class cartlist_page extends StatefulWidget {
  @override
  _cartlist_pageState createState() => _cartlist_pageState();
}

class _cartlist_pageState extends State<cartlist_page> {
  List<String> products = [
    'Black Hoodie',
    'Black Hoodie',
    'Black Hoodie',
    'Black Hoodie',
    'Black Hoodie',
    'Black Hoodie'
  ];
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                bool deleting = false;
                return Dismissible(
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    setState(() {
                      deleting = true;
                      products.removeAt(index);
                    });
                  },
                  direction: DismissDirection.endToStart,
                  background: Container(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end, // alineación a la derecha
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      'images/hodcart.png',
                      width: 80,
                      height: 55,
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Inoffensive Clothes",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                          ),
                        ),
                        Text(
                          "\$75.00",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    textColor: Colors.white,
                    trailing: deleting
                        ? Icon(
                            Icons.delete,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                child: Text(
                  "Process",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => shopcart_page()),
                  );
                },
              ),
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
