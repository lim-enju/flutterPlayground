import 'package:basic_06_crypto_track/domain/model/transaction.dart';

abstract class TransactionRepository {
  Stream<List<Transaction>> getIntervalTransactions();
}
