import 'package:flutter/material.dart';
import 'log_in.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF013168),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin:
                Alignment.topCenter, // 180 degrees corresponds to top-to-bottom
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF013168),
              Color(0xFF013169),
              Color(0xFF01316A),
              Color(0xFF02326C),
              Color(0xFF02346F),
              Color(0xFF023572),
              Color(0xFF023777),
              Color(0xFF023A7C),
              Color(0xFF023C81),
              Color(0xFF023E85),
              Color(0xFF02408A),
              Color(0xFF02428E),
              Color(0xFF024390),
              Color(0xFF024492),
              Color(0xFF024594),
              Color(0xFF024594), // Repeating the last color to make it 100%
            ],
            stops: [
              0.0,
              0.0667,
              0.1333,
              0.2,
              0.2667,
              0.3333,
              0.4,
              0.4667,
              0.5333,
              0.6,
              0.6667,
              0.7333,
              0.8,
              0.8667,
              0.9333,
              1.0,
            ],
          ),
        ),
        child: Center(
          child: Image.asset('images/company.png'),
        ),
      ),
    );
  }
}
