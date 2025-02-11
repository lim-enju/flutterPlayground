import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/repository/transaction_repository.dart';
import 'package:basic_06_crypto_track/domain/test/test.dart';
import 'package:basic_06_crypto_track/presentation/main/main_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewmodel with ChangeNotifier {
  MainState _state = MainState();

  final TransactionRepository transactionRepository;

  MainState get state => _state;

  MainViewmodel(this.transactionRepository) {
    _getTransactions();
  }

  Future<void> _getTransactions() async {
    transactionRepository.getIntervalTransactions().listen((transactions) {
      // 처음 데이터를 조회하는 경우
      if (_state.transactions.isEmpty) {
        _state = _state.copyWith(transactions: transactions);
        notifyListeners();
        return;
      }

      // 새로운 실시간 데이터를 추가
      List<Transaction> newState = [];
      for (var element in _state.transactions) {
        var t = transactions
            .where((newTransaction) => newTransaction.market == element.market)
            .firstOrNull;

        // 현재 가격을 리스트에 추가
        if (t != null) {
          List<TransactionPriceData> list = [
            ...element.currentTradePrice,
            t.currentTradePrice.first
          ];
          if (list.length > 10) list = list.sublist(list.length - 10);

          element = t.copyWith(
            currentTradePrice: list,
          );
          newState.add(element);
        }
      }

      _state = _state.copyWith(
        transactions: newState,
      );
      notifyListeners();
    });
  }
}
