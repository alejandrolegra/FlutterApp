import 'package:flutter/material.dart';

class forgotPassword_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Restablecer contraseña'),
      ),
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  child: SizedBox(
                      width: 400,
                      height: 200,
                      child: Image.asset('images/logo.png')),
              ),
            ),

               const SizedBox(height: 50),

               Padding(padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text("Enter your email and we will contact you to reset your password",
                  style: TextStyle(color: Colors.white, fontSize: 14, 
                  ),textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 40),

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
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'EMAIL',
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
                   null;
                  },
                    )),
              ),
           ],
         ),
        ),
      ),
    );
  }
}
