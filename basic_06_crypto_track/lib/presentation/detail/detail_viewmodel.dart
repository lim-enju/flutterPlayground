import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/repository/transaction_repository.dart';
import 'package:basic_06_crypto_track/presentation/detail/detail_state.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class DetailViewmodel with ChangeNotifier {
  DetailState _detailState = DetailState();
  DetailState get state => _detailState;

  final TransactionRepository _transactionRepository;

  DetailViewmodel(this._transactionRepository);

  Future<void> getTransactionInfo(String market) async {
    _transactionRepository.getIntervalTransaction(market).listen((transaction) {
      print(transaction);
      _detailState = _detailState.copyWith(transaction: transaction);
      notifyListeners();
    });
  }
}
