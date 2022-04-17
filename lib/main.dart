

import 'package:flutter/material.dart';
import 'package:splitcrow/screens/sign_in/sigin_screen.dart';
import 'package:splitcrow/screens/add.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SPLITcrow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SignInScreen(),
    );
  }
}
