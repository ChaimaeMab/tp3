// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../widgets/my_drawer_header.dart';
import '../widgets/my_drawer_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          MyDrawerHeader(
            image: 'imgs/Photo.jpg',
            gradientColors: [Colors.black, Theme.of(context).primaryColor],
          ),
          DrawerItem(
            title: "Home",
            itemIcon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/");
            },
          ),
          Divider(
            height: 1,
          ),
          DrawerItem(
              title: "Products",
              itemIcon: const Icon(
                Icons.shopping_basket,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/products");
              }),
        ],
      )),
      body: Center(
          child: Text(
        "HomePage",
      )),
    );
  }
}
