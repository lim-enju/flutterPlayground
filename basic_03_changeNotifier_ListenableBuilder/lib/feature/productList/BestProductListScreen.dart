import 'package:basic_03_changeNotifier_ListenableBuilder/data/ApiService.dart';
import 'package:basic_03_changeNotifier_ListenableBuilder/data/Product.dart';
import 'package:basic_03_changeNotifier_ListenableBuilder/feature/productList/BestProductListModel.dart';
import 'package:basic_03_changeNotifier_ListenableBuilder/feature/productList/widget/ProductWidget.dart';
import 'package:flutter/material.dart';

class BestproductListScreen extends StatelessWidget {
  const BestproductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("오늘의집"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
              ))
        ],
      ),
      body: BestProductList(),
    );
  }
}

class BestProductList extends StatefulWidget {
  const BestProductList({super.key});

  @override
  State<BestProductList> createState() => _BestProductListState();
}

class _BestProductListState extends State<BestProductList> {
  BestProdutListModel bestProductListModel = BestProdutListModel();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: bestProductListModel,
        builder: (BuildContext context, Widget? child) {
          return ListView.separated(
            itemCount: bestProductListModel.productItems.length,
            itemBuilder: (context, index) => ProductWidget(
              product: bestProductListModel.productItems[index],
              rank: index + 1,
            ),
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
          );
        });
  }
}
