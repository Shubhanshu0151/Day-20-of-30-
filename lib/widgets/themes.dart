import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        cardColor: dartBlusishColor,
        canvasColor: darkCreamColor,
        hintColor: Color.fromARGB(255, 255, 255, 255),
        primaryColorLight: Colors.white,
        // buttonColor: lightBlusishColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          // textTheme: Theme.of(context).textTheme
        ),
      );

  static ThemeData dartTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: creamColor,
      hintColor: Colors.black,
      // buttonColor: lightBlusishColor,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),

        // textTheme: Theme.of(context).textTheme
      ));

  //Colors
  static Color creamColor = Color.fromARGB(255, 252, 250, 250);
  static Color dartBlusishColor = Color(0xff403b58);
  static Color darkCreamColor = Color.fromARGB(255, 26, 25, 25);
  static Color lightBlusishColor = Vx.purple400;
  // static Color white = Vx.white;
}
