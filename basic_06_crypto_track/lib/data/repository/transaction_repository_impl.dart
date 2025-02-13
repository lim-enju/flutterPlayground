import 'package:basic_06_crypto_track/data/data_source/transaction_api.dart';
import 'package:basic_06_crypto_track/data/dto/transaction_price_dto.dart';
import 'package:basic_06_crypto_track/data/dto/transaction_volume_dto.dart';
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
      var markets = [
        'KRW-BTC',
        'KRW-ETH',
        'BTC-ETH',
        'BTC-DOGE',
        'BTC-ETC',
        'USDT-BTC'
      ];
      List<Transaction> result = [];

      for (var element in markets) {
        // 실시간 현재가 정보 조회
        List<TransactionPriceDto> transactionPriceDto =
            await TransactionApi().getCurrentTransactionPrice(element);
        TransactionPriceDto? priceInfo = transactionPriceDto.firstOrNull;
        if (priceInfo == null) continue;

        // 실시간 볼륨 조회
        List<TransactionVolumeDto> transactionVolumneDto =
            await TransactionApi().getCurrentTransactionVolume(element);
        TransactionVolumeDto? volumnInfo = transactionVolumneDto.firstOrNull;
        if (volumnInfo == null) continue;

        result.add(
          Transaction(
            market: priceInfo.market,
            isPrimary: false,
            highPrice: priceInfo.high_price,
            lowPrice: priceInfo.low_price,
            signedChangePrice: priceInfo.signed_change_price,
            change: priceInfo.change,
            currentTradePrice: [
              TransactionPriceData(price: priceInfo.trade_price),
            ],
            currentTradeVolumn: [
              TransactionVolumnData(volumn: volumnInfo.tradeVolume),
            ],
          ),
        );
      }
      yield result;
      await Future.delayed(Duration(seconds: 1));
    }
  }
}
