import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:login_app/app1/widgets/login_panel.dart';
import 'package:login_app/util/responsive.dart';
import 'package:login_app/util/utils.dart';
import 'package:login_app/util/login_wave.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: defaultSpacing),
            height: h / 1.5,
            width: w,
            child: ClipPath(
              clipper: WaveClipper(),
              child: ColoredBox(
                color: green400,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: h / 7, left: defaultSpacing),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome\nHere ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Responsive(
            mobile: Container(
              margin: EdgeInsets.only(top: h / 2.5),
              alignment: Alignment.center,
              child: LoginPanelWidget(),
            ),
            tablet: Container(
              margin: EdgeInsets.only(top: h / 2.5, left: w/4, right: w/4),
              alignment: Alignment.center,
              child: LoginPanelWidget(),
            ),
            desktop: Container(
              margin: EdgeInsets.only(top: h / 2.5, left: w/4, right: w/4),
              alignment: Alignment.center,
              child: LoginPanelWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
