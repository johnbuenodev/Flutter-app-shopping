import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              //color: Colors.red,
              child: productList(context), //Text("Container 1"),
            ),
          ),
          Container(
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$5050",
                        style: TextStyle(
                          color: Colors.blue,
                          //fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    child: Text(
                      'Buy',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ), //NÃO CHAMAR A FUNÇÃO RESPONDER()
                    //child: Text(respostas[0]),
                    onPressed:
                        () {}, //add valor PASSAR a função como PARAMETRO IMPORTANTE
                    style: ElevatedButton.styleFrom(
                        primary: Colors.green, //depreciado mas funciona ainda
                        onPrimary: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 70,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "TOTAL",
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$5050",
                        style: TextStyle(
                          color: Colors.blue,
                          //fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget productList(BuildContext context) {
  return ListView(
    scrollDirection: Axis.vertical,
    children: [
      productCard(/*context, "Produto 1", "700", "assets/product-1.png"*/),
      productCard(/*context, "Produto 2", "600", "assets/product-2.png"*/),
      productCard(/*context, "Produto 3", "500", "assets/product-3.png"*/),
      productCard(/*context, "Produto 4", "556", "assets/product-4.png"*/),
      productCard(/*context, "Produto 5", "322", "assets/product-5.png"*/),
    ],
  );
}

Widget productCard(/*BuildContext context*/) {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/product-3.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Titulo do produto"),
              Text(
                "\$200",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("+"),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("1"),
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: Text("-"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
