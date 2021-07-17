import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(5),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.75,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Column(children: <Widget>[
            Expanded(
              child: Image.asset(
                'product_data/images/chair1.jpg',
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'ゆったり座れるイス',
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
            ),
            Row(
              children: const <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star_border,
                  color: Colors.grey,
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.messenger,
                  color: Color(0xffAEAB92),
                ),
                SizedBox(width: 3),
                Text(
                  '1件',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '¥3000(税込)',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
