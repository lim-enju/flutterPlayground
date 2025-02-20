import 'package:basic_06_crypto_track/domain/model/transaction.dart';
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

class DetailScreenContent extends StatefulWidget {
  const DetailScreenContent({super.key, required this.market});

  final String? market;

  @override
  State<DetailScreenContent> createState() => _DetailScreenContentState();
}

class _DetailScreenContentState extends State<DetailScreenContent> {
  @override
  void initState() {
    super.initState();
    var viewModel = context.read<DetailViewmodel>();
    viewModel.getTransactionInfo(widget.market!);
  }

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<DetailViewmodel>();
    var state = viewModel.state;

    print(state.transaction);

    return SliverPadding(
      padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            if (state.transaction == null)
              Text("데이터를 불러오는 중...")
            else
              TransactionChart(transactionData: state.transaction!),
          ],
        ),
      ),
    );
  }
}
