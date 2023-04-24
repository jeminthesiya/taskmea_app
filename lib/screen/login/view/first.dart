import 'package:flutter/material.dart';

class Create_Screen extends StatefulWidget {
  const Create_Screen({Key? key}) : super(key: key);

  @override
  State<Create_Screen> createState() => _Create_ScreenState();
}

class _Create_ScreenState extends State<Create_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 350,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/log.png",
                ),
              ),
              Text(
                "Hello ! ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Best place to white life stories and\nshare your journney experiences",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                  ),
                  child: Center(
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'signup');
                },
                child: Container(
                  height: 35,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.indigo,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
