import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:murasame_ec/product/model/entities/entities.dart';

class RatingBarWidget extends StatelessWidget {
  const RatingBarWidget(
      {required this.product, required this.itemSize, Key? key})
      : super(key: key);

  final Product product;
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: product.star,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: itemSize,
      ignoreGestures: true,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color(0xffd3c112),
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
