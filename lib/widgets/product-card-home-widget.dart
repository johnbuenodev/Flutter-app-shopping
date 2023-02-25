import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:shopping/pages/product-page.dart';

class ProductCardHome extends StatelessWidget {
  //const ProductCard({super.key});

  final String image;
  final String title;
  final String description;
  final double price;

  ProductCardHome({
    required this.image,
    required this.title,
    required this.description,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170,
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context, //??
                MaterialPageRoute(builder: (context) => ProductPage(
                  imageValue: image,
                  titleValue: title,
                  descriptionValue: description,
                  priceValue: price,
                )),
              );
            },
            child: Image.asset(
              image, //"assets/product-1.png"
              width: 170,
              height: 170,
              fit: BoxFit.cover, //utilizado para não distorcer a imagem
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text(
              title, //"Titulo do Produto" 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              //style: ,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            description, //"Marca: "
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "\$ $price", //"\$ 200"  price.toString()
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          )
        ],
      ),
    );
  }
}
