import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
    );
  }
}
