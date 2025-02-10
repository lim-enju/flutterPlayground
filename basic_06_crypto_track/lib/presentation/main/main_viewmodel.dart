import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/repository/transaction_repository.dart';
import 'package:basic_06_crypto_track/presentation/main/main_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewmodel with ChangeNotifier {
  MainState _state = MainState();

  final TransactionRepository transactionRepository;

  MainState get state => _state;

  MainViewmodel(this.transactionRepository) {
    repeat();
  }

  void repeat() async {
    _getTransactions();
    await Future.delayed(Duration(seconds: 2));
    _getTransactions();
    await Future.delayed(Duration(seconds: 2));
    _getTransactions();
    await Future.delayed(Duration(seconds: 2));
    _getTransactions();
    await Future.delayed(Duration(seconds: 2));
  }

  Future<void> _getTransactions() async {
    List<Transaction> transactions =
        await transactionRepository.getTransactions();

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
          .where((newTransaction) => newTransaction.market == element.market);
      if (t.isNotEmpty) {
        element = element.copyWith(currentTradePrice: [
          ...element.currentTradePrice,
          t.first.currentTradePrice.first
        ]);
        newState.add(element);
      }
      print('element size ${element.currentTradePrice.length}');
    }

    _state = _state.copyWith(
      transactions: newState,
    );
    notifyListeners();
  }
}
