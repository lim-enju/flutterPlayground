import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:basic_06_crypto_track/presentation/widget/TransactionChart.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final Transaction transactionData;

  const TransactionWidget({
    super.key,
    required this.transactionData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.all(13),
          color: transactionData.isPrimary ? Colors.red[500] : Colors.grey[900],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionHeaderWidget(
                transaction: transactionData,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: TransactionChart(
                  transactionData: transactionData,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TransactionBottomWidget(
                transaction: transactionData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionHeaderWidget extends StatelessWidget {
  final Transaction transaction;

  const TransactionHeaderWidget({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/profile.jpg',
            width: 30,
            height: 30,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              'Receive',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              '08:21 AM',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        )
      ],
    );
  }
}

class TransactionBottomWidget extends StatelessWidget {
  final Transaction transaction;

  const TransactionBottomWidget({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transaction.market,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          transaction.signedChangePrice.toString(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: transaction.change == "EVEN"
                    ? Colors.white // 상승 시 초록색
                    : transaction.change == "RISE"
                        ? Colors.red // 하락 시 빨간색
                        : Colors.lightBlue, // 변화 없음 시 회색
              ),
        ),
        Text(
          'open',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
