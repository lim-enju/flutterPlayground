import 'package:basic_06_crypto_track/data/data_source/transaction_api.dart';
import 'package:basic_06_crypto_track/domain/test/test.dart';
import 'package:basic_06_crypto_track/presentation/main/main_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/widget/transaction_widget.dart';
import 'package:basic_06_crypto_track/presentation/widget/AppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBar(),
          MainScreenContent(),
        ],
      ),
    );
  }
}

class MainScreenContent extends StatelessWidget {
  const MainScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewmodel>();
    final state = viewModel.state;

    return SliverPadding(
      padding: EdgeInsets.all(10),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            context.go("/detail/${state.transactions[index].market}");
          },
          child: TransactionWidget(
            transactionData: state.transactions[index],
          ),
        ),
        childCount: state.transactions.length,
      ),
    );
  }
}
