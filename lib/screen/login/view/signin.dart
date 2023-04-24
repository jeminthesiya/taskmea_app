import 'package:flutter/material.dart';
import 'package:taskmea_app/screen/utils/login.dart';

class LogIn_Screen extends StatefulWidget {
  const LogIn_Screen({Key? key}) : super(key: key);

  @override
  State<LogIn_Screen> createState() => _LogIn_ScreenState();
}

class _LogIn_ScreenState extends State<LogIn_Screen> {
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 35,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                "Sign in to continue",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo.shade100,
                      width: 2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              TextField(
                controller: txtpassword,
                decoration: InputDecoration(
                  hintText: "Password",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo.shade100,
                      width: 2,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.indigo,
                      width: 2,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: InkWell(
                  onTap: () async {
                    var email = txtemail.text;
                    var password = txtpassword.text;

                    Sp sp = Sp();
                    Map m1 = await sp.readSp();

                    if (email == m1['e1'] && password == m1['p1']) {
                      Navigator.pushNamed(context, 'ADD');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("fail login"),
                        ),
                      );
                    }
                    txtemail.clear();
                    txtpassword.clear();
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
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Forget Password?",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "__________________________________________________________",
                  style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                child: Text(
                  "Social Media Login",
                  style: TextStyle(
                    color: Colors.indigo.shade200,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/google.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/images/facebook.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "assets/images/apple.png",
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have on account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signup');
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
