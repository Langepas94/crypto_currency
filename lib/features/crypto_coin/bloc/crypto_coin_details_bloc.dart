import 'package:crypto_currency/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'crypto_coin_details_event.dart';
part 'crypto_coin_details_state.dart';

class CryptoCoinDetailsBloc
    extends Bloc<CryptoCoinDetailsEvent, CryptoCoinDetailsState> {
  CryptoCoinDetailsBloc(this.coinsRepository)
      : super(const CryptoCoinDetailsState()) {
    on<LoadCryptoCoinDetails>(_loadDetails);
  }

  final AbstractCoinsRepository coinsRepository;

  Future<void> _loadDetails(LoadCryptoCoinDetails event,
      Emitter<CryptoCoinDetailsState> state) async {
    try {
      if (state is! CryptoCoinDetailsLoaded) {
        emit(CryptoListLoading());
      }
      final coinDetails =
          await coinsRepository.getCoinDetails(event.currencyCode);
      emit(CryptoCoinDetailsLoaded(coin: coinDetails));
    } catch (e) {
      emit(CryptoCoinDetailsLoadingFailure(exception: e));
    }
  }
}
