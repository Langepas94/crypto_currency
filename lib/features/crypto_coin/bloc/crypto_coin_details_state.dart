part of 'crypto_coin_details_bloc.dart';

class CryptoCoinDetailsState extends Equatable {
  const CryptoCoinDetailsState();

  @override
  List<Object?> get props => [];
}

// final class CryptoCoinDetailsInitial extends CryptoCoinDetailsState {
//     @override
//   List<Object?> get props => [];
// }

final class CryptoListLoading extends CryptoCoinDetailsState {
  // @override
  // List<Object?> get props => [];
  const CryptoListLoading();
}

final class CryptoCoinDetailsLoaded extends CryptoCoinDetailsState {
  CryptoCoinDetailsLoaded({required this.coin});
  final CryptoCoinDetail coin;

  @override
  List<Object?> get props => [coin];
}

final class CryptoCoinDetailsLoadingFailure extends CryptoCoinDetailsState {
  CryptoCoinDetailsLoadingFailure({required this.exception});

  final Object? exception;

  @override
  List<Object?> get props => [exception];
}