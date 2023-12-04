import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:crypto_currency/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:crypto_currency/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:equatable/equatable.dart';


part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListInitial()) {
    on<LoadCryptoList>(_loadList);
  }

  final AbstractCoinsRepository coinsRepository;

  Future <void> _loadList(LoadCryptoList event, Emitter <CryptoListState> emit) async {
    try {
        if (state is! CryptoListLoaded) {
          emit(CryptoListLoading());
        }
        final cryptoCoinsList = await coinsRepository.getCoinsList();
        emit(CryptoListLoaded(coinsList: cryptoCoinsList));
      } catch (e) {
        emit(CryptoListLoadingFailure(exception: e));
      } finally {
        event.completer?.complete();
      }
  }
}
