import 'package:flutter/material.dart';
import 'ReusableTextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool rememberMe = false; // Initialize the state of rememberMe

  @override
  void initState() {
    super.initState();
    rememberMe = false; // Initialize the state using the provided value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF013168),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
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
          padding: EdgeInsets.only(
            top: 60,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('images/company.png'),
                SizedBox(
                  height: 60,
                ),
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.22),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Text(
                        "Welcome !",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Log in to the Employees’ Vacations System",
                        style: TextStyle(
                          color: Color(0xFFFAFAFA),
                          fontSize: 14,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 350,
                        child: ReusedTextField(
                          hintTexts: 'Enter your username',
                          labelTexts: 'Username',
                          obsText: false,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: 350,
                        child: ReusedTextField(
                          hintTexts: 'Enter your password',
                          labelTexts: 'Password',
                          obsText: true,
                        ),
                      ),
                      Row(
                        children: [
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Colors.white,
                            ),
                            child: Checkbox(
                              activeColor: Color(0xFF00C7B4),
                              value: rememberMe,
                              onChanged: (bool? value) {
                                setState(() {
                                  rememberMe = value ?? false;
                                });
                              },
                            ),
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00C7B4),
                        ),
                        onPressed: () {},
                        child: Container(
                          width: 310,
                          height: 50,
                          child: Row(
                            children: [
                              Text(
                                "Log in",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 230,
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
