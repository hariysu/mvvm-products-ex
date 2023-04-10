import 'package:flutter/foundation.dart';

import '../models/products.dart';
import '../services/web_service.dart';

enum ProductState { IDLE, BUSY, ERROR }

class ProductsViewModel with ChangeNotifier {
  ProductState? _state;

  Products? productList;

  ProductsViewModel() {
    productList = null;
    _state = ProductState.IDLE;
    getProducts();
  }

  ProductState? get state => _state;

  set state(ProductState? state) {
    _state = state;
    notifyListeners();
  }

  Future<Products?> getProducts() async {
    try {
      state = ProductState.BUSY;
      productList = await WebService().fetchProducts();
      state = ProductState.IDLE;
      return productList;
    } catch (e) {
      state = ProductState.ERROR;
      return null;
    }
  }
}
