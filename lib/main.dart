import 'package:flutter/material.dart';
import 'package:mvvm_products_ex/views/launch_view.dart';
import 'package:provider/provider.dart';

import 'views/products_view.dart';
import 'view_models/products_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProductsViewModel>(
      create: (BuildContext context) => ProductsViewModel(),
      child: MaterialApp(
        title: 'Products',
        theme: ThemeData(primarySwatch: Colors.cyan),
        initialRoute: '/',
        routes: {
          '/': (context) => LaunchView(),
          '/products-view': (context) => ProductsView(),
        },
      ),
    );
  }
}
