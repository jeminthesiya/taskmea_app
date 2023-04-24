import 'dart:async';

import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, 'create');
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "TaskMe",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 70,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 70,
                ),
                child: Text(
                  "powered by HNG",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
