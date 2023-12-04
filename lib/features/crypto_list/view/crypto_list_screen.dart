import 'package:crypto_currency/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_currency/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});
  
  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() {
  _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCurrency'),
      ),
      body: (_cryptoCoinsList == null) 
      ? Center(child: const CircularProgressIndicator()) : 
      ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _cryptoCoinsList!.length,
        itemBuilder:  (context, i) {
        final coin = _cryptoCoinsList![i];
        return CryptoCoinTile(coin: coin,);
        },
        ),
    );
  }

  Future<void> _loadCryptoCoins() async {
       _cryptoCoinsList = await GetIt.I<AbstractCoinsRepository>().getCoinsList();
      setState(() {});
  }
}

