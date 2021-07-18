import 'package:flutter/material.dart';
import 'package:login_app/app1/login_screen.dart';
import 'package:login_app/util/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: green300,
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: green300
        ),
      ),
      home: LoginScreen(),
    );
  }
}
