import 'package:basic_06_crypto_track/presentation/detail/detail_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/widget/transaction_widget.dart';
import 'package:basic_06_crypto_track/presentation/widget/AppBar.dart';
import 'package:basic_06_crypto_track/presentation/widget/TransactionChart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.market,
  });

  final String? market;

  @override
  Widget build(BuildContext context) {
    print('DetailScreen');
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          DetailScreenContent(
            market: market,
          ),
        ],
      ),
    );
  }
}

class DetailScreenContent extends StatelessWidget {
  const DetailScreenContent({super.key, required this.market});

  final String? market;

  @override
  Widget build(BuildContext context) {
    Future.microtask(() {
      print('Future.microtask');
      context.read<DetailViewmodel>().getTransactionInfo(market!);
    });

    var viewModel = context.watch<DetailViewmodel>();
    var transaction = viewModel.state.transaction;
    context.read<DetailViewmodel>().getTransactionInfo(market!);
    return SliverPadding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            if (transaction == null)
              Text('')
            else
              TransactionChart(transactionData: transaction),
          ],
        ),
      ),
    );
  }
}
