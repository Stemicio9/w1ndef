import 'package:flutter/material.dart';
import 'package:w1n/costanti/coloriestili.dart';
import 'package:w1n/loginsignup/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'W1N',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,

      builder: (context, child) =>
          MediaQuery(data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true), child: child),

      initialRoute: "/",

      routes: {
        '/': (context) => Login(),
/*        '/signup': (context) => NuovoSignup(),
        '/home': (context) => DashboardDatoreNuova(),
        '/homelavoratore': (context) => DashboardLavoratoreNuova(),
        '/homeamministratore': (context) => HomePageAmministratore(), */
      },
    );
  }
}

