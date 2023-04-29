import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pbl/register.dart';
import 'package:pbl/home.dart';
import 'package:pbl/login.dart';
import 'package:pbl/home1.dart';

// import 'package:loginsignup/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home': (context) => homepage(),
      'login': (context) => loginpage(),
      'register': (context) => MyRegister(),
      'home1': (context) => MyHome()
    },
  ));
}
