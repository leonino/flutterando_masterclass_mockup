import 'package:flutter/material.dart';
import 'package:flutterando_mastersclass_mockups/src/shared/constante_cores.dart';

class ThemeProvider extends ValueNotifier<ThemeData> {
  ThemeProvider() : super(MyThemes.darkTheme);

  bool get isDarkTheme => value == MyThemes.darkTheme;

  void toggleTheme(bool isOn) {
    value = isOn ? MyThemes.darkTheme : MyThemes.lightTheme;
  }
}

class MyThemes {
  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: corWhite90,
    primaryColor: corBlue,
    highlightColor: corBlack90,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: corBlack90),
      color: corWhite90,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: corBlack90,
      ),
      toolbarTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: corBlack90,
      ),
    ),
    cardTheme: const CardTheme(
      color: corWhite,
    ),
    primaryIconTheme: IconThemeData(
      color: corBlue,
    ),
    iconTheme: const IconThemeData(
      color: corWhite,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: corBlack90,
      selectedItemColor: corBlack50,
      backgroundColor: corWhite90,
      selectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins",
          color: Colors.black),
      unselectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins",
          color: Colors.black),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: corBlack90,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: corBlack90,
      ),
      headline3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: corBlack90,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: corBlack90,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: corBlack90,
      ),
      caption: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: corCinza,
      ),
      subtitle1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: corBlack90,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: corBlack90,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: corBlack90,
      ),
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: corBlack90,
    primaryColor: corBlue,
    highlightColor: corWhite,
    appBarTheme: AppBarTheme(
      actionsIconTheme: IconThemeData(color: corWhite),
      color: corBlack90,
      titleTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: corWhite,
      ),
      toolbarTextStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: corWhite,
      ),
    ),
    cardTheme: const CardTheme(
      color: corBlack50,
    ),
    primaryIconTheme: IconThemeData(
      color: corBlue,
    ),
    iconTheme: const IconThemeData(
      color: corBlack90,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: corWhite90,
      selectedItemColor: corWhite,
      backgroundColor: corBlack90,
      selectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          fontFamily: "poppins",
          color: corWhite),
      unselectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          fontFamily: "poppins",
          color: corWhite),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: corWhite,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: corWhite,
      ),
      headline3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 15,
        fontWeight: FontWeight.normal,
        color: corWhite,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: corWhite90,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        // height: 21,
        fontWeight: FontWeight.w400,
        color: corCinza,
      ),
      caption: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: corCinza,
      ),
      subtitle1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: corWhite,
      ),
      subtitle2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: corWhite,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: corWhite,
      ),
    ),
  );
}
