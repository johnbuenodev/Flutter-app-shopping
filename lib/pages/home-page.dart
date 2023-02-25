import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping/pages/cart-page.dart';
import 'package:shopping/pages/product-page.dart';
import 'package:shopping/widgets/category-item-widget.dart';
import 'package:shopping/widgets/category-list-widget.dart';
import 'package:shopping/widgets/product-card-home-widget.dart';
import 'package:shopping/widgets/product-list-home-widget.dart';
import 'package:shopping/widgets/search-widget.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          color: Color(0xFFF5F5F5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .stretch, //para que o componente/widget ocupe todo o espaço disponivel
            children: [
              SizedBox(
                height: 60,
              ),
              SearchWidget(),
              SizedBox(
                height: 30,
              ),
              Text(
                "Categorias",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: CategoryList(),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best Selling",
                    style: TextStyle(fontSize: 30, color: Colors.black87),
                  ),
                  TextButton(
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.italic,
                      ),
                    ), //NÃO CHAMAR A FUNÇÃO RESPONDER()
                    //child: Text(respostas[0]),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    // style: ElevatedButton.styleFrom(
                    //     primary: Colors.blue, //depreciado mas funciona ainda
                    //     onPrimary: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 350,
                child: ProductList(scrollDirection: Axis.horizontal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
