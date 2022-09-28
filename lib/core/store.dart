import 'package:flutter_first_app/models/cartModel.dart';
import 'package:flutter_first_app/models/catalogModel.dart';
import 'package:velocity_x/velocity_x.dart';

class AppStore extends VxStore {
  CatalogModel catalog = CatalogModel();
  CartModel cart = CartModel();

  AppStore() {
    cart.catalog = catalog;
  }
}
