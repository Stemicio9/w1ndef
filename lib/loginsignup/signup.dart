import 'package:flutter/material.dart';
import 'package:w1n/costanti/coloriestili.dart';
import 'package:w1n/loginsignup/signupparts/sezioni.dart';
import 'package:w1n/widgets/appbar.dart';

class NuovoSignup extends StatefulWidget {
  @override
  NuovoSignupState createState() {
    // TODO: implement createState
    return NuovoSignupState();
  }

}

class NuovoSignupState extends State<NuovoSignup> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarcomune("ISCRIVITI"),
        body:
        Container(
            child:
            Column(
              children: <Widget>[
                TabBar(

                    isScrollable: false,
                    controller: controller,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: azzurroscuro,

                    tabs: [
                      new Tab(
                        child: Text("Cerco lavoro" , style: titolonuovo, textAlign: TextAlign.center),
                      ),
                      new Tab(
                        child: Text("Offro lavoro" , style: titolonuovo, textAlign: TextAlign.center),
                      ),
                    ]

                ),
                Expanded(
                    child:
                    GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        child: TabBarView(
                            controller: controller,
                            children: <Widget> [
                              Container(
                                child: SezioneNuova(true),
                              ),
                              SingleChildScrollView(
                                child: SezioneNuova(false),
                              )
                            ]
                        )
                    )
                )

              ],
            )
        )
    );
  }

}