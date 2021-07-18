import 'package:flutter/material.dart';
import 'package:login_app/util/utils.dart';

class LoginPanelWidget extends StatefulWidget {
  @override
  _LoginPanelWidgetState createState() => _LoginPanelWidgetState();
}

class _LoginPanelWidgetState extends State<LoginPanelWidget> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _box(email, "Email", TextInputType.text),
        _box(password, "Password", TextInputType.text),
        Container(
          margin: EdgeInsets.only(top: 32.0, bottom: defaultSpacing),
          child: _loginButton(),
        ),
        _socialAuthButton('f', 'Log in with Facebook'),
        Container(
            margin: EdgeInsets.only(top: defaultSpacing),
            alignment: Alignment.centerRight,
            child: _forgotPasswordButton()),
      ],
    );
  }

  Widget _box(TextEditingController controller, String label,
      TextInputType textInputType) {
    return Container(
      margin: EdgeInsets.only(top: defaultSpacing),
      child: TextFormField(
        controller: controller,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
        keyboardType: textInputType,
        obscureText: label == 'Password' ? true : false,
        maxLines: 1,
        decoration: InputDecoration(
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey[400]),
        ),
      ),
    );
  }

  Widget _loginButton() => InkWell(
        onTap: () {
          /// Add login functionality
        },
        child: Container(
          height: buttonHeight,
          width: double.infinity,
          decoration: BoxDecoration(
            color: green400,
            borderRadius: BorderRadius.circular(defaultSpacing),
          ),
          child: Center(
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );

  Widget _socialAuthButton(String logoText, String title) => Container(
        height: buttonHeight,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: green400,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(defaultSpacing),
                      topLeft: Radius.circular(defaultSpacing)),
                ),
                alignment: Alignment.center,
                child: Text(
                  logoText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: green300,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                alignment: Alignment.center,
                child: Text(title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize,
                        fontWeight: FontWeight.w400)),
              ),
            ),
          ],
        ),
      );

  Widget _forgotPasswordButton() => InkWell(
        onTap: () {
          /// TODO: Add Forgot password functionality
        },
        child: Text(
          'Forgot Password?',
          style: TextStyle(color: green400, fontWeight: FontWeight.w600),
        ),
      );
}
