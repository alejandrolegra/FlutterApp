import 'package:flutter/material.dart';

class pay_page extends StatefulWidget {
  @override
  _pay_pageState createState() => _pay_pageState();
}

class _pay_pageState extends State<pay_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text('Payment Methods'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 70.0),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: 325,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Text(
                    "UPI",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 237),
                  Expanded(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: 325,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Text(
                    "Debit Cards",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 160),
                  Expanded(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: 325,
              height: 256,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Credit Cards',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 296,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: 296,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: 296,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25.0),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: 325,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    'Add new method',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: 325,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Pay Now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
