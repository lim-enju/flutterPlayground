import 'package:basic_01_asynchronous/data/ApiService.dart';
import 'package:basic_01_asynchronous/data/Product.dart';
import 'package:flutter/material.dart';

class BestProdutListModel with ChangeNotifier {
  List<ProductItem> _productItems = [];
  List<ProductItem> get productItems => _productItems;

  BestProdutListModel() {
    _fetchBestProduction();
  }

  Future<void> _fetchBestProduction() async {
    _productItems = await ApiService().fetchBestProduction();
    notifyListeners();
  }
}
