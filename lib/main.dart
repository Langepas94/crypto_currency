import 'package:crypto_currency/crypto_app.dart';
import 'package:crypto_currency/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';


void main() {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(() => CryptoCoinsRepository(dio: Dio()));

  runApp(const CryptoCurrencyApp());
}




