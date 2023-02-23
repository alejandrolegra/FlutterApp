import 'package:flutter/material.dart';
import 'package:inoffensive/createAccount_page.dart';
import 'package:inoffensive/forgotPassword_page.dart';
import 'package:inoffensive/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              'Inoffensive',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),

            //Entry 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'USERNAME',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            //Entry 1
            const SizedBox(height: 22),
            //Entry 2
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'PASSWORD',
                        hintStyle: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            //Entry 2
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child:Row( mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell( 
                    child: const Text('Forgor password?',
                    style: TextStyle(
                      color: Colors.white, 
                        fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => forgotPassword_page()),
                      );
                    },
                  ),
                ]
              ),
            ),
            const SizedBox(height: 40),

            //Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child:SizedBox(height: 60, width: 600,
                child: ElevatedButton(
                  child: Text("LOGIN", 
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 0, 
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => main_page()),
                    );
                  },
                )
              ),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child:Row( mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell( 
                    child: const Text('CREATE ACCOUNT',
                      style: TextStyle(
                        color: Colors.blue, 
                          fontSize: 20,
                          fontWeight:FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => createAccount_page()),
                      );
                    },
                  ),
                ]
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
