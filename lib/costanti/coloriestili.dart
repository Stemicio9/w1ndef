import 'package:flutter/material.dart';

final baseurl = "http://87.27.62.247/";  //Cambiare l'url base, il server è diverso

final String DATORE = "DATORE";
final String LAVORATORE = "LAVORATORE";
final String AMMINISTRATORE = "AMMINISTRATORE";



final Color azzurrochiaro = Color(0xFF0EDED2);
final Color azzurroscuro = Color(0xFF03A0FE);
final Color rosso = Colors.redAccent;
final Color verde = Color(0xFF2FE000);
final Color calltoactionlogin = Color.fromRGBO(254, 167, 10, 1);

final String fontfamily = "Montserrat";


final TextStyle testosemplice12 = TextStyle(color: Color(0xFFA0A0A0),
    fontSize: 12,
    fontWeight: FontWeight.w700);

final TextStyle testosemplice16 = TextStyle(color: Color(0xFFA0A0A0),
    fontSize: 16,
    fontWeight: FontWeight.w700);


final TextStyle testosemplice16sottolineato = TextStyle(color: Color(0xFFA0A0A0),
    fontSize: 16,
    fontWeight: FontWeight.w700,
    decoration: TextDecoration.underline);


final TextStyle stiletestoappbar = TextStyle(color: Colors.white,
    fontSize: 22, fontWeight: FontWeight.w700, fontFamily: fontfamily);

final TextStyle titolonuovo =
new TextStyle(fontFamily: fontfamily , fontSize: 20 , fontWeight: FontWeight.w700, color: azzurroscuro);

// GRADIENTS


const List<Color> greengradient = [
  Color(0xFF2FE000),
  Color(0x5F2FCF33),
  Color(0x5F2FCF33),
  Color(0xFF2FE000),
];

List<Color> wingradient = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];

const List<Color> signInGradients = [
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
  Color(0xFF0EDED2),
  Color(0xFF03A0FE),
];