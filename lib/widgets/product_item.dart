// ignore_for_file: sized_box_for_whitespace, file_names

import 'package:catalog_app/Pages/product_details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool details;
  const ProductItem({super.key, required this.product, required this.details});

  @override
  Widget build(BuildContext context) {
    final td = Theme.of(context);
    return ListTile(
      title: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product['name'],
                        style: td.textTheme.bodySmall!.copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "${product['price'].toString()} DHs",
                        style: td.textTheme.bodySmall!.copyWith(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      product['promo']
                          ? const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            )
                          : const SizedBox(
                              height: 0,
                            ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(product['stars'].toString()),
                          const SizedBox(width: 2),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductsDetails(
                        productID: product['id'],
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image(
                        width: 150,
                        height: 110,
                        fit: BoxFit.fill,
                        alignment: Alignment.centerRight,
                        image: AssetImage(product['image'])),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 1,
              indent: 20,
              endIndent: 20,
              color: Colors.black12,
            ),
            details
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      product['description'],
                      style: td.textTheme.bodySmall!.copyWith(fontSize: 15),
                      textAlign: TextAlign.justify,
                    ),
                  )
                : const SizedBox(
                    width: 0,
                    height: 0,
                  ),
          ],
        ),
      ),
    );
  }
}
