import 'package:crypto_currency/features/crypto_coin/crypto_coin.dart';
import 'package:crypto_currency/features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => CryptoListScreen(),
  '/coin': (context) => CryptoCoinScreen(),
};
