import 'package:flutter/material.dart';
import 'package:crypto_currency/router/router.dart';
import 'package:crypto_currency/theme/theme.dart';

class CryptoCurrencyApp extends StatefulWidget {
  const CryptoCurrencyApp({super.key});

  @override
  State<CryptoCurrencyApp> createState() => _CryptoCurrencyAppState();
}

class _CryptoCurrencyAppState extends State<CryptoCurrencyApp> {

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Crypto Cyrrency',
      theme: darkTheme,
      routerConfig: _appRouter.config(),
    );
  }
}