import 'package:basic_01_asynchronous/data/ApiService.dart';
import 'package:basic_01_asynchronous/data/Product.dart';

class BestProdutListModel {
  List<ProductItem> _productItems = [];

  List<ProductItem> get productItems => _productItems;

  Future<void> fetchBestProduction() async {
    _productItems = await ApiService().fetchBestProduction();
  }
}
