import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final double height;

  const TransactionWidget({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
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
