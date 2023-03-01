import 'dart:async';
import 'package:inoffensive/main_page.dart';

import 'package:flutter/material.dart';

class TransicionPage extends StatefulWidget {
  const TransicionPage({Key? key}) : super(key: key);

  @override
  _TransicionPageState createState() => _TransicionPageState();
}

class _TransicionPageState extends State<TransicionPage>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2000));

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();

    Timer(Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => main_page()),
                      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: Colors.grey[800],
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Opacity(
              opacity: 1 - _animation.value,
              child: Transform.scale(
                scale: _animation.value + 1,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}