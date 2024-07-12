import "package:flutter/material.dart";

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
        background: Color.fromARGB(255, 219, 190, 141),
        primary: Color.fromARGB(255, 167, 149, 149),
        secondary: Colors.white,
        inversePrimary: Color.fromARGB(255, 90, 66, 66)));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
        background: Color.fromARGB(255, 114, 84, 84),
        primary: Color.fromARGB(255, 125, 111, 111),
        secondary: const Color.fromARGB(255, 77, 76, 76),
        inversePrimary: Colors.white));
