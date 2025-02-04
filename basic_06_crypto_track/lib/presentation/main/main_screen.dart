import 'package:basic_06_crypto_track/presentation/main/main_viewmodel.dart';
import 'package:basic_06_crypto_track/presentation/main/widget/transaction_widget.dart';
import 'package:flutter/material.dart';
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
            stretchTriggerOffset: 100.0,
            expandedHeight: 50.0,
            floating: false,
            pinned: false,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                      'assets/profile.jpg',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/search.svg',
                        width: 30,
                        height: 30,
                      ),
                      Image.asset(
                        'assets/notification.png',
                        width: 30,
                        height: 30,
                      ),
                    ],
                  )
                ],
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
    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      delegate: SliverChildListDelegate(
        [
          TransactionWidget(),
          TransactionWidget(),
          TransactionWidget(),
        ],
      ),
    );
  }
}
