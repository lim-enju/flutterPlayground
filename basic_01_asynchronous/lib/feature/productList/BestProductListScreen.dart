import 'package:basic_01_asynchronous/data/ApiService.dart';
import 'package:basic_01_asynchronous/feature/productList/widget/ProductWidget.dart';
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
    return FutureBuilder(
      future: ApiService().fetchBestProduction(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var data = snapshot.data ?? [];
          return ListView.separated(
            itemCount: data.length,
            itemBuilder: (context, index) => ProductWidget(
              product: data[index],
              rank: index + 1,
            ),
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
            ),
          );
        }

        return Text('로딩중');
      },
    );
  }
}
