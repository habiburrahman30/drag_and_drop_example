import 'dart:ffi';

class Product {
  final String? id;
  final String? title;
  final num? weight;
  final num? quantity;
  final String? quantityUom;

  Product({
    this.id,
    this.title,
    this.weight,
    this.quantity,
    this.quantityUom,
  });
}
