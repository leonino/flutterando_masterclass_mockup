import 'package:flutterando_mastersclass_mockups/src/product/models/product_model.dart';

abstract class ProductEvent {}

class FetchProductEvent extends ProductEvent {}

class CreateProductEvent extends ProductEvent {
  final ProductModel model;

  CreateProductEvent(this.model);
}
