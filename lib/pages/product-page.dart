import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductPage extends StatelessWidget {
  //const ProductPage({super.key});

  final String imageValue;
  final String titleValue;
  final String descriptionValue;
  final double priceValue;

  ProductPage({
    required this.imageValue,
    required this.titleValue,
    required this.descriptionValue,
    required this.priceValue
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                expandedHeight: 400.0, //abrir com uma altura de 400px
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image.asset(
                    imageValue,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              )
            ];
          },
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Text(
                  titleValue,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(titleValue),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  priceValue.toString(), // priceValue.toString()
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10),
              child: Text(
                descriptionValue
              ),)
            ],
          )),
    );
  }
}
