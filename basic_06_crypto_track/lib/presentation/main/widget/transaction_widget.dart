import 'package:basic_06_crypto_track/domain/model/transaction_chart_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_price_data.dart';
import 'package:basic_06_crypto_track/domain/model/transaction_volumn_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final TransactionChartData transactionChartData;

  const TransactionWidget({
    super.key,
    required this.transactionChartData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          padding: EdgeInsets.all(13),
          color: Colors.grey[900],
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionHeaderWidget(),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: TransactionChart(
                  transactionChartData: transactionChartData,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TransactionBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({super.key});

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
  final TransactionChartData transactionChartData;

  const TransactionChart({super.key, required this.transactionChartData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: TransactionBarChart(
            volumns: transactionChartData.currentTradeVolumn,
          ),
        ),
        Positioned(
          child: TransactionLineChart(
            prices: transactionChartData.currentTradePrice,
          ),
        ),
      ],
    );
  }
}

class TransactionBarChart extends StatelessWidget {
  final List<TransactionVolumnData> volumns;

  const TransactionBarChart({
    super.key,
    required this.volumns,
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(
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
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        maxY: 10,
        minY: 0,
      ),
    );
  }

  List<BarChartGroupData> get barGroups => volumns
      .asMap()
      .map((index, data) => MapEntry(
          index,
          BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: data.volumn,
                color: Colors.blue,
              ),
            ],
          )))
      .values
      .toList();
}

class TransactionLineChart extends StatelessWidget {
  final List<TransactionPriceData> prices;

  const TransactionLineChart({
    super.key,
    required this.prices,
  });

  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      duration: const Duration(milliseconds: 250),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: FlGridData(show: false),
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: prices.length.toDouble(),
        maxY: 10,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          getTooltipColor: (touchedSpot) =>
              Colors.blueGrey.withValues(alpha: 0.8),
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
        show: false,
        border: Border(
          bottom: BorderSide(color: Colors.black),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: const BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: Colors.green,
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: prices
            .asMap()
            .map((index, data) =>
                MapEntry(index, FlSpot(index.toDouble(), data.price)))
            .values
            .toList(),
      );
}

class TransactionBottomWidget extends StatelessWidget {
  const TransactionBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BTC',
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
