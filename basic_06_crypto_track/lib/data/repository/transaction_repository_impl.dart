import 'package:basic_06_crypto_track/data/data_source/transaction_api.dart';
import 'package:basic_06_crypto_track/data/dto/transaction_dto.dart';
import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:basic_06_crypto_track/domain/repository/transaction_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TransactionRepository)
class TransactionRepositoryImpl implements TransactionRepository {
  @override
  Future<List<Transaction>> getTransactions() async {
    var markets = ['KRW-BTC', 'KRW-BTC', 'KRW-BTC'];
    List<Transaction> result = [];

    for (var element in markets) {
      List<TransactionDto> transactions =
          await TransactionApi().getCurrentTransactionPrice(element);
      TransactionDto? priceInfo = transactions.firstOrNull;
      if (priceInfo == null) continue;

      result.add(
        Transaction(
          isPrimary: false,
          currentTradePrice: TransactionPriceData(price: priceInfo.trade_price),
          currentTradeVolumn: TransactionVolumnData(volumn: 0),
        ),
      );
    }

    return Future.value(result);
  }
}
