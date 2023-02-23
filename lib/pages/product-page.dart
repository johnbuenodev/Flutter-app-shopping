import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductPage extends StatelessWidget {
  //const ProductPage({super.key});

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
                    "assets/product-1.png",
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
                  "Dry Fit Long Sleeve",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text("By Nike"),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(10),
              child: Text(
                "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."
              ),)
            ],
          )),
    );
  }
}
