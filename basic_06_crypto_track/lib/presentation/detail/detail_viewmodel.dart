import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:basic_06_crypto_track/domain/repository/transaction_repository.dart';
import 'package:basic_06_crypto_track/presentation/detail/detail_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetailViewmodel with ChangeNotifier {
  DetailState _state = DetailState();
  DetailState get state => _state;

  final TransactionRepository _transactionRepository;

  DetailViewmodel(this._transactionRepository);

  void getTransactionInfo(String market) {
    _transactionRepository.getIntervalTransaction(market).listen(
      (transaction) {
        if (_state.transaction == null) {
          _state = _state.copyWith(transaction: transaction);
          notifyListeners();
          return;
        }

        // 현재 가격을 리스트에 추가
        List<TransactionPriceData> priceList = [
          ..._state.transaction?.currentTradePrice ?? List.empty(),
          transaction.currentTradePrice.first
        ];
        if (priceList.length > 10) {
          priceList = priceList.sublist(priceList.length - 10);
        }

        // 현재 볼륨을 리스트에 추가
        List<TransactionVolumnData> volumnList = [
          ..._state.transaction?.currentTradeVolumn ?? List.empty(),
          transaction.currentTradeVolumn.first
        ];
        if (volumnList.length > 10) {
          volumnList = volumnList.sublist(volumnList.length - 10);
        }

        var transaction2 = transaction.copyWith(
            currentTradePrice: priceList, currentTradeVolumn: volumnList);

        _state = _state.copyWith(transaction: transaction2);

        notifyListeners();
      },
    );
  }
}
