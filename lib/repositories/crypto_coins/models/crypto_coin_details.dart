import 'package:equatable/equatable.dart';

class CryptoCoinDetail extends Equatable {
  const CryptoCoinDetail({
    required this.priceInUSD,
    required this.imageUrl,
    required this.toSymbol,
    required this.lastUpdate,
    required this.hight24Hour,
    required this.low24Hours,
  });

  final double priceInUSD;
  final String imageUrl;
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
        priceInUSD,
        imageUrl,
      ];
}
