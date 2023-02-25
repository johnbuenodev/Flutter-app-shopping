import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/product-card-home-widget.dart';

class ProductList extends StatelessWidget {
  //const ProductList({super.key});
  final  Axis scrollDirection;

  ProductList({
    required this.scrollDirection
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    child: ListView(
      scrollDirection: scrollDirection, //Axis.horizontal,
      children: [
        ProductCardHome(
          title: "Smart Bluetooth speaker",
          description: "Google Inc.",
          image: "assets/product-3.png",
          price: 150,
        ),
        ProductCardHome(
          title: "Nike dry-fit long Sleeve",
          description: "Nike",
          image: "assets/product-10.png",
          price: 150,
        ),
        ProductCardHome(
          title: "Beoplay Speaker",
          description: "Bang and Olufsen",
          image: "assets/product-1.png",
          price: 755,
        ),
        ProductCardHome(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          image: "assets/product-2.png",
          price: 450,
        ),
      ],
    ),
  );
  }
}