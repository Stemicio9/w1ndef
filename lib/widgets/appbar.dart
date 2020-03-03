

import 'package:flutter/material.dart';
import 'package:w1n/costanti/coloriestili.dart';

appbarcomune (String titolo) {
  return new AppBar(
      backgroundColor: azzurroscuro,
      title: Text(titolo, style: stiletestoappbar
      ),
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        ),)
  );
}