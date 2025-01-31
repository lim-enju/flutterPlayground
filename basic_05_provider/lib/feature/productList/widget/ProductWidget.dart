import 'package:basic_05_provider/data/Product.dart';
import 'package:basic_05_provider/feature/productList/widget/ProductImageWidget.dart';
import 'package:basic_05_provider/feature/productList/widget/ProductInfoWidget.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key, required this.product, required this.rank});

  final ProductItem product;
  final int rank;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ProductImageWidget(
            product: product,
            rank: rank,
          ),
          SizedBox(
            width: 8,
          ),
          ProductInfoWidget(product: product),
        ],
      ),
    );
  }
}
