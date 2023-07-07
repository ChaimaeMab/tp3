// ignore_for_file: prefer_const_constructors, must_be_immutable, file_names

import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  String title;
  Icon itemIcon;
  Function onTap;
  DrawerItem(
      {super.key,
      required this.title,
      required this.itemIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onTap(),
      leading: itemIcon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: Icon(
        Icons.arrow_forward,
        color: Colors.grey,
      ),
    );
  }
}
