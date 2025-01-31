import 'package:basic_05_provider/data/ApiService.dart';
import 'package:basic_05_provider/data/Product.dart';
import 'package:basic_05_provider/feature/productList/BestProductListModel.dart';
import 'package:basic_05_provider/feature/productList/widget/ProductWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BestproductListScreen extends StatelessWidget {
  const BestproductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<BestProdutListModel>(
        create: (_) => BestProdutListModel(),
        child: Scaffold(
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
        ),
      ),
    );
  }
}

class BestProductList extends StatelessWidget {
  const BestProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BestProdutListModel>(
      builder: (context, model, child) {
        return ListView.separated(
          itemCount: model.value.productItems.length,
          itemBuilder: (context, index) => ProductWidget(
            product: model.value.productItems[index],
            rank: index + 1,
          ),
          separatorBuilder: (context, index) => Divider(
            thickness: 1,
          ),
        );
      },
    );
  }
}
