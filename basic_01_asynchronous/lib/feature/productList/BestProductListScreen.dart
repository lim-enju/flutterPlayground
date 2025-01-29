import 'package:basic_01_asynchronous/feature/productList/widget/Product.dart';
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

class BestProductList extends StatelessWidget {
  const BestProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Product();
      },
      separatorBuilder: (context, index) => Divider(
        thickness: 1,
      ),
    );
  }
}
