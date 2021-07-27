import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

// ignore_for_file: non_constant_identifier_names

@freezed
class Product with _$Product {
  factory Product(
      {required int id,
      required String name,
      required String description,
      required int price,
      required String image_path,
      required int stock,
      required double star,
      required int review_count}) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
