import 'package:basic_06_crypto_track/data/dto/transaction_price_dto.dart';
import 'package:basic_06_crypto_track/data/dto/transaction_volume_dto.dart';
import 'package:dio/dio.dart';

class TransactionApi {
  final _dio = Dio();

  Future<List<TransactionPriceDto>> getCurrentTransactionPrice(
      String marketName) async {
    final response = await _dio.getUri(
        Uri.parse('https://api.upbit.com/v1/ticker?markets=$marketName'));
    final data = TransactionPriceDto.fromJsonList(response.data);
    return data;
  }

  Future<List<TransactionVolumeDto>> getCurrentTransactionVolume(
      String marketName) async {
    final response = await _dio.getUri(
        Uri.parse('https://api.upbit.com/v1/trades/ticks?market=$marketName'));
    final data = TransactionVolumeDto.fromJsonList(response.data);
    return data;
  }
}
