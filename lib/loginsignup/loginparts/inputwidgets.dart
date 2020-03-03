
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final double topRight;
  final double bottomRight;
  final String hinttext1;
  final String hinttext2;
  TextEditingController controller1;
  TextEditingController controller2;

  InputWidget(this.topRight, this.bottomRight, this.hinttext1,this.hinttext2,this.controller1,this.controller2);

  @override
  Widget build(BuildContext context) {
    return

      Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                child: Material(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(bottomRight),
                          topRight: Radius.circular(topRight))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
                    child: TextField(
                      controller: controller1,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hinttext1,
                          hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14, fontWeight: FontWeight.w900)),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40, bottom: 30),
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                child: Material(
                  elevation: 10,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(topRight),
                          topRight: Radius.circular(bottomRight))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
                    child: TextField(
                      obscureText: true,
                      controller: controller2,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hinttext2,
                          hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14, fontWeight: FontWeight.w900)),
                    ),
                  ),
                ),
              ),
            )
          ]

      );
  }
}


class InputWidgetSingolo extends StatelessWidget {

  final double topRight;
  final double bottomRight;
  final String hinttext;
  TextEditingController controller;


  InputWidgetSingolo(this.topRight, this.bottomRight, this.hinttext,this.controller);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      child: Material(
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(bottomRight),
                topRight: Radius.circular(topRight))),
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 20, top: 10, bottom: 10),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hinttext,
                hintStyle: TextStyle(color: Color(0xFFE1E1E1), fontSize: 14, fontWeight: FontWeight.w900)),
          ),
        ),
      ),
    );
  }

}