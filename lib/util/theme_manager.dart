import 'dart:ui';

import 'package:flutter/material.dart';

///
///'primary' : '#0b3b59',           /* Primary color */
///'primary-focus' : '#08293e',     /* Primary color - focused */
///'primary-content' : '#ffffff',   /* Foreground content color to use on primary color */

///'secondary' : '#7eadbf',         /* Secondary color */
///'secondary-focus' : '#658a99',   /* Secondary color - focused */
///'secondary-content' : '#ffffff', /* Foreground content color to use on secondary color */

///'accent' : '#06b6d4',            /* Accent color */
///'accent-focus' : '#0891b2',      /* Accent color - focused */
///'accent-content' : '#ffffff',    /* Foreground content color to use on accent color */

///'neutral' : '#3d4451',           /* Neutral color */
///'neutral-focus' : '#2a2e37',     /* Neutral color - focused */
///'neutral-content' : '#ffffff',   /* Foreground content color to use on neutral color */

///'base-100' : '#f9fafb',          /* Base color of page, used for blank backgrounds */
///'base-200' : '#f2f2f2',          /* Base color, a little darker */
///'base-300' : '#f5f5f5',          /* Base color, even more darker */
///'base-content' : '#1f2937',      /* Foreground content color to use on base color */

///'info' : '#2094f3',              /* Info */
///'success' : '#009485',           /* Success */
///'warning' : '#ff9900',           /* Warning */
///'error' : '#dc2626',
///

const Color primary = Color(0xff0b3b59);
const Color primaryFocus = Color(0xff08293e);
const Color primaryContent = Color(0xffffffff);
const Color secondary = Color(0xff7eadbf);
const Color secondaryFocus = Color(0xff658a99);
const Color secondaryContent = Color(0xffffffff);
const Color accent = Color(0xff06b6d4);
const Color accentFocus = Color(0xff0891b2);
const Color accentContent = Color(0xffffffff);
const Color neutral = Color(0xff3d4451);
const Color neutralFocus = Color(0xff2a2e37);
const Color neutralContent = Color(0xffffffff);
const Color base100 = Color(0xfff9fafb);
const Color base200 = Color(0xfff2f2f2);
const Color base300 = Color(0xfff5f5f5);
const Color baseContent = Color(0xff1f2937);
const Color info = Color(0xff2094f3);
const Color success = Color(0xff009485);
const Color warning = Color(0xffff9900);
const Color error = Color(0xffdc2626);

//Theme Data
ThemeData themeData = ThemeData(
    primaryColor: primary,
    primaryColorDark: primaryFocus,
    primaryColorLight: primaryContent,
    canvasColor: base100,
    scaffoldBackgroundColor: base100,
    backgroundColor: base100,
    cardColor: base200,
    dividerColor: base300,
    focusColor: primaryFocus,
    hoverColor: primaryFocus,
    highlightColor: primaryFocus,
    splashColor: primaryFocus,
    selectedRowColor: primaryFocus,
    unselectedWidgetColor: neutral,
    disabledColor: neutral,
    toggleableActiveColor: primary,
    secondaryHeaderColor: secondary,
    indicatorColor: primary,
    hintColor: neutral,
    errorColor: error,
    buttonTheme: const ButtonThemeData(
      buttonColor: primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: baseContent,
        fontSize: 96.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      displayMedium: TextStyle(
        color: baseContent,
        fontSize: 60.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      displaySmall: TextStyle(
        color: baseContent,
        fontSize: 48.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins-Italic'
      ),
      headlineLarge: TextStyle(
        color: baseContent,
        fontSize: 34.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      headlineMedium: TextStyle(
        color: baseContent,
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      headlineSmall: TextStyle(
        color: baseContent,
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins-Italic'
      ),
      titleLarge: TextStyle(
        color: baseContent,
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      titleMedium: TextStyle(
        color: baseContent,
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      titleSmall: TextStyle(
        color: baseContent,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins-Italic'
      ),
      labelLarge: TextStyle(
        color: baseContent,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      labelMedium: TextStyle(
        color: baseContent,
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins'
      ),
      labelSmall: TextStyle(
        color: baseContent,
        fontSize: 11.0,
        fontWeight: FontWeight.bold,
        fontFamily: 'Poppins-Italic'
      ),
      bodyLarge: TextStyle(
        color: baseContent,
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Poppins'
      ),
      bodyMedium: TextStyle(
        color: baseContent,
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Poppins'
      ),
      bodySmall: TextStyle(
        color: baseContent,
        fontSize: 12.0,
        fontWeight: FontWeight.normal,
        fontFamily: 'Poppins'
      ),
    ),
);
