import 'package:flutter/material.dart';
import 'package:taskmea_app/screen/utils/login.dart';

class SignOut_Screen extends StatefulWidget {
  const SignOut_Screen({Key? key}) : super(key: key);

  @override
  State<SignOut_Screen> createState() => _SignOut_ScreenState();
}

class _SignOut_ScreenState extends State<SignOut_Screen> {
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
                "Hi!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Text(
                "Create a new account",
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
                  onTap: () {
                    var email = txtemail.text;
                    var password = txtpassword.text;

                    Sp sp = Sp();
                    sp.saveSp(email, password);
                    Navigator.pushReplacementNamed(context,'login');
                  },
                  child: Container(
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                    ),
                    child: Center(
                      child: Text(
                        "SIGN UP",
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
                height: 50,
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
                  "Social Media Signup",
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
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
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
