import "package:flutter/material.dart";

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  useMaterial3: true,
  colorScheme: ColorScheme.light(
    // seedColor: AppColor.primaryColor,
    primary: Colors.black,
    onPrimary: Colors.white,
    primaryContainer: Colors.white,
    onPrimaryContainer: Colors.white,
    primaryFixed: Color(0XFFD1E4FF),
    onPrimaryFixed: Color(0XFF001D36),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  useMaterial3: true,
  colorScheme: ColorScheme.dark(
    // seedColor: AppColor.primaryColor,
    primary: Colors.white,
    onPrimary: Colors.white,
    primaryContainer: Colors.black,
    onPrimaryContainer: Colors.white,
    primaryFixed: Color(0XFFD1E4FF),
    onPrimaryFixed: Color(0XFF001D36),
  ),
);
