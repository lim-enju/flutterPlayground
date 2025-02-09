import 'package:basic_06_crypto_track/domain/test/test.dart';
import 'package:basic_06_crypto_track/presentation/main/main_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/widget/transaction_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewmodel>();

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black87,
            stretch: false,
            onStretchTrigger: () async {
              // Triggers when stretching
            },
            expandedHeight: 200,
            // stretchTriggerOffset: 100.0,
            // expandedHeight: 50.0,
            floating: false,
            pinned: false,
            snap: false,
            actions: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    'assets/profile.jpg',
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Spacer(),
              SvgPicture.asset(
                'assets/search.svg',
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 20.0,
              ),
              Image.asset(
                'assets/notification.png',
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 100.0,
                ),
                child: Text(
                  'Transactions\nHistory',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            ),
          ),
          MainScreenContent()
        ],
      ),
    );
  }
}

class MainScreenContent extends StatelessWidget {
  const MainScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.all(10),
      sliver: SliverMasonryGrid.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemBuilder: (context, index) {
          return TransactionWidget(
              transactionData:
                  (index == 3) ? data.copyWith(isPrimary: true) : data);
        },
        childCount: 10,
      ),
    );
  }
}
