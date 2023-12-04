
import 'package:equatable/equatable.dart';

class CryptoCoin extends Equatable {
    const CryptoCoin({
   required this.name, 
   required this.priceUSD,
   required this.imageURL
});

  final String name;
  final double priceUSD;
  final String imageURL;
  
  @override
  List<Object?> get props => [name, priceUSD, imageURL];
}