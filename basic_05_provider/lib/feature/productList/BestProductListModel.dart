import 'package:basic_05_provider/data/ApiService.dart';
import 'package:basic_05_provider/data/Product.dart';
import 'package:flutter/material.dart';

class BestProdutListModel extends ValueNotifier {

  BestProdutListModel() : super(BestProductListState()) {
    _fetchBestProduction();
  }

  void _fetchBestProduction() async {
    value = value.copyWith(
      items: await ApiService().fetchBestProduction()
    );
  }
}

class BestProductListState {
  final List<ProductItem> productItems;

  BestProductListState({
    this.productItems = const [],
    });

  BestProductListState copyWith({
    List<ProductItem>? items
  }) {
    return BestProductListState(productItems: items ?? this.productItems);
  }
}
