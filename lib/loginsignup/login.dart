



import 'package:flutter/material.dart';
import 'package:w1n/loginsignup/loginparts/background.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }

}

class LoginState extends State<Login>{


  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body:
        GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child:

            Stack(
              children: <Widget>[
                Background(),
//                login(context),
              ],
            ))
    );
  }

}