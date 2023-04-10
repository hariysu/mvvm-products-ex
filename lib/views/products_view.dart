import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_models/products_view_model.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductsViewModel>(context).productList;
    final productState = Provider.of<ProductsViewModel>(context).state;
    return Scaffold(
      appBar: AppBar(title: Text('Products')),
      body: productState == ProductState.BUSY
          ? Center(
              child: CircularProgressIndicator(),
            )
          : productState == ProductState.ERROR
              ? Center(
                  child: Text('Something went wrong!'),
                )
              : ListView.builder(
                  itemCount: productProvider!.products.length,
                  itemBuilder: (_, index) => Card(
                    child: ListTile(
                      title: Text(productProvider.products[index].title),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(productProvider.products[index].brand),
                          Text("Rating: " +
                              productProvider.products[index].rating.toString())
                        ],
                      ),
                    ),
                  ),
                ),
    );
  }
}
