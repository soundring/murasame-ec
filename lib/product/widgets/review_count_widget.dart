import 'package:flutter/material.dart';

class ReviewCountWidget extends StatelessWidget {
  const ReviewCountWidget({required this.reviewCount, Key? key})
      : super(key: key);

  final int reviewCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.messenger,
          color: Color(0xffAEAB92),
        ),
        const SizedBox(width: 3),
        Text(
          '$reviewCount件',
        )
      ],
    );
  }
}
