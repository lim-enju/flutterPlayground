import 'package:basic_06_crypto_track/domain/model/transaction.dart';
import 'package:basic_06_crypto_track/presentation/detail/detail_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/widget/transaction_widget.dart';
import 'package:basic_06_crypto_track/presentation/widget/AppBar.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Value',
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                    'W${state.transaction?.currentTradePrice.last.price}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SizedBox(
                    height: 200,
                    child: TransactionChart(
                      transactionData: state.transaction!,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TransactionSmallWidget(
                        title: 'sdf',
                        price: 'sdf',
                        discription: 'sdfs',
                      ),
                      TransactionSmallWidget(
                        title: 'sdf',
                        price: 'sdf',
                        discription: 'sdfs',
                      )
                    ],
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}

class TransactionSmallWidget extends StatelessWidget {
  const TransactionSmallWidget({
    super.key,
    required this.title,
    required this.price,
    required this.discription,
  });

  final String title;
  final String price;
  final String discription;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
