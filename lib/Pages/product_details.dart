// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:catalog_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsDetails extends StatefulWidget {
  final int productID;
  const ProductsDetails({super.key, required this.productID});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  dynamic prod;

  @override
  void initState() {
    super.initState();
    http
        .get(
            Uri.parse('http://192.168.0.103:9000/products/${widget.productID}'))
        .then((resp) {
      setState(() {
        prod = json.decode(resp.body);
      });
    }).catchError((e) {
      print(" Error : $e");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product Details"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: prod == null
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : ProductItem(product: prod, details: true),
        ));
  }
}
