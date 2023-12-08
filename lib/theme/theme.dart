import 'package:flutter/material.dart';

final darkTheme = ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        dividerColor: Colors.white24,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 31, 31, 31),
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
          centerTitle: true),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6), fontSize: 14,  fontWeight: FontWeight.w700)
        )
      );