// ignore_for_file: unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:skill_colab/utils/colors.dart';

class AppThemes {
  AppThemes._();

  static String font1 = "Inter";
  static String font2 = "Inter";

  //main color
  static const Color _lightPrimaryColor = kDodgerBlue;

  //Background Colors
  static const Color _lightBackgroundColor = scaffoldColor;
  static const Color _lightBackgroundAppBarColor = _lightPrimaryColor;
  static const Color _lightBackgroundSecondaryColor = kWhite;
  static const Color _lightBackgroundAlertColor = kBlackPearl;
  static const Color _lightBackgroundActionTextColor = kWhite;
  static const Color _lightBackgroundErrorColor = kBrinkPink;
  static const Color _lightBackgroundSuccessColor = kJuneBud;

  //Text Colors
  static const Color _lightTextColor = kBlack;
  static const Color _lightAlertTextColor = kBlack;
  static const Color _lightTextSecondaryColor = kBlack;

  //Border Color
  static const Color _lightBorderColor = kNevada;

  //Icon Color
  static const Color _lightIconColor = kNevada;

  //form input colors
  static const Color _lightInputFillColor = _lightBackgroundSecondaryColor;
  static const Color _lightBorderActiveColor = _darkBackgroundColor;
  // static const Color _darkBorderActiveColor = _lightBackgroundColor;

  static const Color _lightBorderErrorColor = kBrinkPink;

  //constants color range for dark theme
  static const Color _darkPrimaryColor = kDodgerBlue;

  //Background Colors
  static const Color _darkBackgroundColor = darkBackgroundColor;
  static const Color _darkBackgroundAppBarColor = _darkPrimaryColor;
  static const Color _darkBackgroundSecondaryColor =
      Color.fromRGBO(0, 0, 0, .6);
  static const Color _darkBackgroundAlertColor = kBlackPearl;
  static const Color _darkBackgroundActionTextColor = kWhite;

  static const Color _darkBackgroundErrorColor =
      Color.fromRGBO(255, 97, 136, 1);
  static const Color _darkBackgroundSuccessColor =
      Color.fromRGBO(186, 215, 97, 1);

  //Text Colors
  static const Color _darkTextColor = kWhite;
  static const Color _darkAlertTextColor = kWhite;
  static const Color _darkTextSecondaryColor = kWhite;

  //Border Color
  static const Color _darkBorderColor = kNevada;

  //Icon Color
  static const Color _darkIconColor = kNevada;

  static const Color _darkInputFillColor = _darkBackgroundSecondaryColor;
  static const Color _darkBorderActiveColor = _lightBackgroundColor;
  static const Color _darkBorderErrorColor = kBrinkPink;

  //text theme for light theme
  static const TextTheme _lightTextTheme = TextTheme(
    headline1:
        TextStyle(fontSize: 20.0, color: _lightTextColor, fontFamily: "Inter"),
    bodyText1:
        TextStyle(fontSize: 16.0, color: _lightTextColor, fontFamily: "Inter"),
    bodyText2: TextStyle(fontSize: 14.0, color: _lightTextColor, fontFamily: "Inter"),
    headline3:
        TextStyle(fontSize: 16, color: _lightTextColor, fontFamily: "Inter"),
    button: TextStyle(
      fontSize: 15.0,
      color: _lightTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
    ),
    headline6:
        TextStyle(fontSize: 16.0, color: _lightTextColor, fontFamily: "Inter"),
    subtitle1:
        TextStyle(fontSize: 16.0, color: _lightTextColor, fontFamily: "Inter"),
    caption: TextStyle(
      fontSize: 12.0,
      color: _lightBackgroundAppBarColor,
      fontFamily: "Inter",
    ),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    cardColor: kWhite,
    fontFamily: "Inter",
    canvasColor: Colors.white,
    bottomAppBarColor: bottomnavLightbackgroundColor,
    scaffoldBackgroundColor: scaffoldColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _lightTextColor),
      toolbarTextStyle: _lightTextTheme.bodyText2,
      titleTextStyle: _lightTextTheme.headline6,
    ),
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      // secondary: _lightSecondaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: _lightBackgroundAlertColor,
      actionTextColor: _lightBackgroundActionTextColor,
    ),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _lightPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _lightBackgroundSecondaryColor,
      //focusColor: _lightBorderActiveColor,
    ),
  );

  static const TextTheme _darkTextTheme = TextTheme(
    headline1:
        TextStyle(fontSize: 20.0, color: _darkTextColor, fontFamily: "Inter"),
    bodyText1:
        TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: "Inter"),
    bodyText2: TextStyle(fontSize: 14.0, color: kGrey, fontFamily: "Inter"),
    headline3:
        TextStyle(fontSize: 16, color: _lightTextColor, fontFamily: "Inter"),
    button: TextStyle(
      fontSize: 15.0,
      color: _darkTextColor,
      fontWeight: FontWeight.w600,
      fontFamily: "Inter",
    ),
    headline6:
        TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: "Inter"),
    subtitle1:
        TextStyle(fontSize: 16.0, color: _darkTextColor, fontFamily: "Inter"),
    caption: TextStyle(
      fontSize: 12.0,
      color: _darkBackgroundAppBarColor,
      fontFamily: "Inter",
    ),
  );

  //the dark theme
 }
