import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHeaderWidget(),
      ],
    );
  }
}

class TransactionHeaderWidget extends StatelessWidget {
  const TransactionHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/profile.jpg'),
        Column(
          children: [
            Text('Receive'),
            Text('08:21 AM'),
          ],
        )
      ],
    );
  }
}
