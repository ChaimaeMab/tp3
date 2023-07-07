// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

import 'dart:convert';

import 'package:catalog_app/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    http.get(Uri.parse('http://192.168.0.159:9000/products')).then((resp) {
      setState(() {
        products = json.decode(resp.body);
      });
    }).catchError((err) {
      print("************ Error Occured ************ \n $err");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Products'),
        centerTitle: true,
      ),
      body: products.isEmpty
          ? Center(
              child: Text(
                'No products available !',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, idx) => ProductItem(
                  product: products[idx],
                  details: false,
                ),
              ),
            ),
    );
  }
}
