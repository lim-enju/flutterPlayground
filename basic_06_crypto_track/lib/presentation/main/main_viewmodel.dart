import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
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

      // 실시간 데이터를 뷰에서 사용 가능한 형태로 변환
      List<Transaction> newState = [];
      for (var element in _state.transactions) {
        var t = transactions
            .where((newTransaction) => newTransaction.market == element.market)
            .firstOrNull;

        if (t == null) continue;

        // 현재 가격을 리스트에 추가
        List<TransactionPriceData> priceList = [
          ...element.currentTradePrice,
          t.currentTradePrice.first
        ];
        if (priceList.length > 10) {
          priceList = priceList.sublist(priceList.length - 10);
        }

        // 현재 볼륨을 리스트에 추가
        List<TransactionVolumnData> volumnList = [
          ...element.currentTradeVolumn,
          t.currentTradeVolumn.first
        ];
        if (volumnList.length > 10) {
          volumnList = volumnList.sublist(volumnList.length - 10);
        }

        element = t.copyWith(
          currentTradePrice: priceList,
          currentTradeVolumn: volumnList,
        );
        newState.add(element);
      }

      // 데이터 방출
      _state = _state.copyWith(
        transactions: newState,
      );
      notifyListeners();
    });
  }
}
