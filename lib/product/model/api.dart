import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';

// ignore: top_level_function_literal_block
final productsFetcher = FutureProvider((ProviderReference ref) async {
  final loadData = await loadAsset();

  final jsonList =
      (await jsonDecode(loadData) as List).cast<Map<String, dynamic>>();

  return jsonList
      .map<Product>((Map<String, dynamic> json) => Product.fromJson(json))
      .toList();
});

Future<String> loadAsset() async {
  return rootBundle.loadString('product_data/furniture.json');
}
