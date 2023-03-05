import 'package:flutter/material.dart';

import 'package:inoffensive/login_page.dart';

class createAccount_page extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Create account'),
      ),
      body: Center(
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

            const SizedBox(height: 30),

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
                    controller: _usernameController,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'USERNAME',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),

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
                    controller: _passwordController,
                    obscureText: true,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'PASSWORD',
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
                    controller: _confirmpasswordController,
                    obscureText: true,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'CONFIRM PASSWORD',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.6))),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 80),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: SizedBox(
                    height: 60,
                    width: 600,
                child: ElevatedButton(
                      child: Text(
                        "SUBMIT",
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
        // ignore: unrelated_type_equality_checks
        if (_usernameController.text.isEmpty || _passwordController.text.isEmpty || _confirmpasswordController.text.isEmpty || _passwordController.text != _confirmpasswordController.text) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text('Please check your credentials.'),
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
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Done'),
                content: Text('Your account has been created'),
                actions: [
                  TextButton(
                    child: Text('OK',style: TextStyle(fontWeight: FontWeight.bold),),
                    onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          ),
                  ),
                ],
              );
            },);
        }
  },
  )),
              ),
          ]),
        ),
      ),
    );
  }
}