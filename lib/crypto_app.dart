import 'package:flutter/material.dart';
import 'package:crypto_currency/router/router.dart';
import 'package:crypto_currency/theme/theme.dart';

class CryptoCurrencyApp extends StatelessWidget {
  const CryptoCurrencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      routes: routes,
    );
  }
}