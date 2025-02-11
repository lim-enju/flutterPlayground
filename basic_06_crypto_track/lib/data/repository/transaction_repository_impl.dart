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
  Stream<List<Transaction>> getIntervalTransactions() async* {
    while (true) {
      var markets = ['KRW-BTC', 'KRW-BTC', 'KRW-BTC'];
      List<Transaction> result = [];

      for (var element in markets) {
        // 실시간 현재가 정보 조회
        List<TransactionDto> transactions =
            await TransactionApi().getCurrentTransactionPrice(element);
        TransactionDto? priceInfo = transactions.firstOrNull;
        if (priceInfo == null) continue;

        result.add(
          Transaction(
            market: priceInfo.market,
            isPrimary: false,
            highPrice: priceInfo.high_price,
            lowPrice: priceInfo.low_price,
            currentTradePrice: [
              TransactionPriceData(price: priceInfo.trade_price),
            ],
            currentTradeVolumn: [
              TransactionVolumnData(volumn: 0),
            ],
          ),
        );
      }
      yield result;
      await Future.delayed(Duration(seconds: 1));
    }
  }
}
