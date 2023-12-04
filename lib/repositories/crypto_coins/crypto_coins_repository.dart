
import 'package:crypto_currency/repositories/crypto_coins/crypto_coins.dart';
import 'package:crypto_currency/repositories/crypto_coins/models/crypto_coin_details.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository implements AbstractCoinsRepository {

  CryptoCoinsRepository({required this.dio});
  static const String imageBaseURL = 'https://www.cryptocompare.com';
  final Dio dio;

  @override
  Future <List<CryptoCoin>> getCoinsList() async {
    final response = await dio.get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,AVAX,ETH,BNB,SOL,AID,CAG,DOV&tsyms=USD'
    );

   final data = response.data as Map<String, dynamic>;
   final dataRaw = data['RAW'] as Map<String, dynamic>;
   final dataList = dataRaw.entries
   .map((e) {
    final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
    final price = usdData['PRICE'];
    final imageURL = usdData['IMAGEURL'];
     return CryptoCoin(
    name: e.key, 
    priceUSD: price,
    imageURL: '$imageBaseURL$imageURL'
    );}).toList();
    return dataList;
  }
  
   @override
  Future<CryptoCoinDetail> getCoinDetails(String currencyCode) async {
    final response = await dio.get (
  'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=$currencyCode&tsyms=USD');
final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final coinData = dataRaw[currencyCode] as Map<String, dynamic>;
final usdData = coinData['USD'] as Map<String, dynamic>;
    final price = usdData['PRICE'];
    final imageUrl = usdData['IMAGEURL'];
    final toSymbol = usdData['TOSYMBOL'];
    final lastUpdate = usdData['LASTUPDATE'];
    final hight24Hour = usdData['HIGH24HOUR'];
    final low24Hours = usdData['LOW24HOUR'];

return CryptoCoinDetail(
  priceInUSD: price, 
  imageUrl: '$imageBaseURL$imageUrl', 
  toSymbol: toSymbol, 
  lastUpdate: DateTime.fromMillisecondsSinceEpoch(lastUpdate), 
  hight24Hour: hight24Hour, 
  low24Hours: low24Hours);
  }
}

