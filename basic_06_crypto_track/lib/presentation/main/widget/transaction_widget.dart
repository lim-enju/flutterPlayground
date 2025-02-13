import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:fl_chart/fl_chart.dart';
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

class TransactionChart extends StatelessWidget {
  final Transaction transactionData;

  const TransactionChart({super.key, required this.transactionData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: TransactionBarChart(
            transaction: transactionData,
          ),
        ),
        Positioned(
          child: TransactionLineChart(
            transaction: transactionData,
          ),
        ),
      ],
    );
  }
}

class TransactionBarChart extends StatelessWidget {
  final Transaction transaction;
  double width = 0.0;

  TransactionBarChart({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        width = constraints.maxWidth;
        return BarChart(
          duration: Duration.zero,
          BarChartData(
            alignment: BarChartAlignment.spaceBetween,
            barGroups: barGroups,
            borderData: FlBorderData(show: false),
            gridData: FlGridData(
              show: false,
              drawHorizontalLine: false,
              drawVerticalLine: false,
            ),
            titlesData: FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
            ),
            maxY: 0.1,
            minY: 0,
          ),
        );
      },
    );
  }

  List<BarChartGroupData> get barGroups => transaction.currentTradeVolumn
      .asMap()
      .map((index, data) => MapEntry(
          index,
          BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: data.volumn,
                width: width / 10,
                borderRadius: BorderRadius.all(Radius.zero),
                // color: Colors.amber,
                gradient: getLinearGradient(4),
              )
            ],
          )))
      .values
      .toList();

  LinearGradient getLinearGradient(int lineCount) {
    List<Color> colors = [];
    List<double> stops = [];
    List.generate(lineCount, (index) {
      colors.add(Colors.grey[700] ?? Colors.grey);
      colors.add(Colors.transparent);
    });

    var length = 1 / lineCount;
    var startStops = 0.0;

    List.generate((lineCount).toInt(), (index) {
      stops.add(startStops);
      startStops += length;
      stops.add(startStops);
    });

    return LinearGradient(
      colors: colors,
      stops: stops,
    );
  }
}

class TransactionLineChart extends StatelessWidget {
  final Transaction transaction;

  const TransactionLineChart({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      duration: Duration.zero,
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: FlGridData(show: false),
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 10,
        maxY: transaction.highPrice / 1000000000,
        minY: transaction.lowPrice / 1000000000,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) => Colors.white,
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [lineChartBarData1_1];

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(color: Colors.black),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: Colors.white,
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: transaction.currentTradePrice
            .asMap()
            .map((index, data) => MapEntry(
                index, FlSpot(index.toDouble(), data.price / 1000000000)))
            .values
            .toList(),
      );
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
          '+0.002345',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'pending',
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
