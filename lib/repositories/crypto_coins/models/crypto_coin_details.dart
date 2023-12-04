import 'crypto_coin.dart';

class CryptoCoinDetail extends CryptoCoin {
  const CryptoCoinDetail({
    required super.priceUSD,
    required super.imageURL,
    required this.toSymbol,
    required this.lastUpdate,
    required this.hight24Hour,
    required this.low24Hours, 
    required super.name, 
  });


  final double low24Hours;
  final double hight24Hour;
  final String toSymbol;
  final DateTime lastUpdate;

  @override
  List<Object> get props => [
        toSymbol,
        lastUpdate,
        hight24Hour,
        low24Hours,
        priceUSD,
        imageURL,
      ];
}
