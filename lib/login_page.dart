import 'package:flutter/material.dart';

import 'package:inoffensive/createAccount_page.dart';
import 'package:inoffensive/forgotPassword_page.dart';
import 'package:inoffensive/TransicionPage.dart';

import 'package:inoffensive/components/square_tile.dart';

class LoginPage extends StatefulWidget {
 LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: Container(
                      width: 400,
                      height: 200,
                      child: Image.asset('images/logo.png')),
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
    child: Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: TextField(
        controller: _usernameController, // Agregado
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'USERNAME',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
        ),
      ),
    ),
  ),

            const SizedBox(height: 22),

            Padding(
  padding: const EdgeInsets.symmetric(horizontal: 40.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.transparent,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: TextField(
        controller: _passwordController, // Agregado
        obscureText: true,
        style: TextStyle(color: Colors.white, fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'PASSWORD',
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
        ),
      ),
    ),
  ),
),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  InkWell( 
                    child: const Text(
                      'I forgor',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => forgotPassword_page()),
                      );
                    },
                  ),
                ]),
            ),
            const SizedBox(height: 40),

            Padding(
  padding: const EdgeInsets.symmetric(horizontal: 40.0),
  child: SizedBox(
    height: 60,
    width: 600,
    child: ElevatedButton(
      child: Text(
        "LOGIN",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 10,
      ),
      onPressed: () {
        if (_usernameController.text.isEmpty || _passwordController.text.isEmpty) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text('Please enter a username and password.'),
                actions: [
                  TextButton(
                    child: Text('OK',style: TextStyle(fontWeight: FontWeight.bold),),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              );
            },
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TransicionPage()),
          );
        }
      },
    ),
  ),
),

              const SizedBox(height: 50),

              // or continue with
              const SizedBox(height: 50),
              
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.png'),

                  SizedBox(width: 25),

                  // apple button
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(width: 4),
                  InkWell( 
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue, 
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => createAccount_page()),
                      );
                    },
                  ),
                ],
              )
            ],
              ),
            ),
      ),
    );
  }
}