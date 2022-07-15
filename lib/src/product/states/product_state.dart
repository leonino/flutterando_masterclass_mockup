import 'package:flutterando_mastersclass_mockups/src/product/models/product_model.dart';

abstract class ProductState {}

class InitialProductState extends ProductState {}

class LoadingProductState extends ProductState {}

class FailureProductState extends ProductState {
  final String message;

  FailureProductState(this.message);
}

class SucessProductState extends ProductState {
  final List<ProductModel> models;

  SucessProductState(this.models);
}
