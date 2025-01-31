import 'package:basic_02_setState/data/ApiService.dart';
import 'package:basic_02_setState/data/Product.dart';

class BestProdutListModel {
  List<ProductItem> _productItems = [];

  List<ProductItem> get productItems => _productItems;

  Future<void> fetchBestProduction() async {
    _productItems = await ApiService().fetchBestProduction();
  }
}
