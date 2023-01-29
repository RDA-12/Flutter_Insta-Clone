import 'package:flutter/material.dart';

class AppThemes {
  static final _formBorderInput = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(
      color: Colors.black.withOpacity(0.1),
    ),
  );

  static final lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
    inputDecorationTheme: InputDecorationTheme(
      isDense: true,
      border: _formBorderInput,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      enabledBorder: _formBorderInput,
      focusedBorder: _formBorderInput,
      fillColor: const Color.fromRGBO(242, 242, 242, 1),
      filled: true,
      hintStyle: TextStyle(
        color: Colors.black.withOpacity(0.3),
      ),
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    ),
  );
}
