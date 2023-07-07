// ignore_for_file: prefer_const_constructors, file_names, must_be_immutable

import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  String image;
  List<Color> gradientColors;
  String? nom;
  MyDrawerHeader(
      {super.key, required this.image, required this.gradientColors, this.nom});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 50,
          ),
          SizedBox(
            width: 10,
          ),
          if (nom != null)
            Text(nom!, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
