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
    _getTransactions();
  }

  Future<void> _getTransactions() async {
    List<Transaction> transactions =
        await transactionRepository.getTransactions();
    _state = _state.copyWith(transactions: transactions);

    print('_state $transactions');

    notifyListeners();
  }
}
