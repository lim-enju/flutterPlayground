import 'package:basic_01_asynchronous/feature/productList/widget/ProductImage.dart';
import 'package:basic_01_asynchronous/feature/productList/widget/ProductInfo.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ProductImage(),
          SizedBox(
            width: 8,
          ),
          ProductInfo(),
        ],
      ),
    );
  }
}
