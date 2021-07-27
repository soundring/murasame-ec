// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$_$_ProductFromJson(Map<String, dynamic> json) {
  return _$_Product(
    id: json['id'] as int,
    name: json['name'] as String,
    description: json['description'] as String,
    price: json['price'] as int,
    image_path: json['image_path'] as String,
    stock: json['stock'] as int,
    star: (json['star'] as num).toDouble(),
    review_count: json['review_count'] as int,
  );
}

Map<String, dynamic> _$_$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'image_path': instance.image_path,
      'stock': instance.stock,
      'star': instance.star,
      'review_count': instance.review_count,
    };
