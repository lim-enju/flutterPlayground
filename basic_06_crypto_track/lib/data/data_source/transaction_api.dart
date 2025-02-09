import 'package:basic_06_crypto_track/data/dto/transaction_dto.dart';
import 'package:dio/dio.dart';

class TransactionApi {
  final _dio = Dio();

  Future<List<TransactionDto>> getCurrentTransactionPrice() async {
    final response = await _dio
        .getUri(Uri.parse('https://api.upbit.com/v1/ticker?markets=KRW-BTC'));
    final data = TransactionDto.fromJsonList(response.data);
    return data;
  }
}
