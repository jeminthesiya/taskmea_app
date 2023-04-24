import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmea_app/screen/introscreen/intro.dart';
import 'package:taskmea_app/screen/login/view/first.dart';
import 'package:taskmea_app/screen/login/view/signin.dart';
import 'package:taskmea_app/screen/login/view/signup.dart';
import 'package:taskmea_app/todo/add.dart';
import 'package:taskmea_app/todo/edit.dart';
import 'package:taskmea_app/todo/todoscreen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: 'TODO',
      routes: {
        '/': (p0) => IntroScreen(),
        'create': (p0) => Create_Screen(),
        'login': (p0) => LogIn_Screen(),
        "signup": (p0) => SignOut_Screen(),
        'TODO':(p0) => TodoScreen(),
        'ADD':(p0) => AddScreen(),
        'EDIT':(p0) => EditScreen(),
      },
    ),
  );
}
