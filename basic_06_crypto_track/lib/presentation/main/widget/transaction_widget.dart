import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {

  const TransactionWidget({
    super.key,
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
                child:  TransactionChart(),
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
  const TransactionChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TransactionBarChart(),
        TransactionLineChart(),
      ],
    );
  }
}

class TransactionBarChart extends StatelessWidget {
  const TransactionBarChart({super.key});

    @override
    Widget build(BuildContext context) {
      return BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceBetween,
            barGroups: barGroups,
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
            titlesData: FlTitlesData(
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false) ),
              rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false) ),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false) ),
              bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false) ),
            ),
            maxY: 4,
            minY: 1,
          ),
      );
    }

    List<BarChartGroupData> get barGroups => [
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 1.1,
            color: Colors.blue,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 1.5,
            color: Colors.blue,
          ),
        ],
      ),
        BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
            toY: 1.4,
            color: Colors.blue,
          ),
        ],
      ),
        BarChartGroupData(
        x: 7,
        barRods: [
          BarChartRodData(
            toY: 3.4,
            color: Colors.blue,
          ),
        ],
      ),
    ];
}

class TransactionLineChart extends StatelessWidget {
  const TransactionLineChart({super.key});

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
        minX: 1,
        maxX: 4,
        maxY: 4,
        minY: 1,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
    handleBuiltInTouches: true,
    touchTooltipData: LineTouchTooltipData(
      getTooltipColor: (touchedSpot) =>
          Colors.blueGrey.withValues(alpha: 0.8),
    ),
  );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false)
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false)
        ),
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
        color: Colors.green,
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 1),
          FlSpot(2, 1.5),
          FlSpot(3, 1.4),
          FlSpot(4, 3.4),
        ],
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
