import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping/pages/product-page.dart';

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
              search(),
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
                child: categoryList(),
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
                child: productList(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    //color: Colors.black.withOpacity(0.1),
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black.withOpacity(0.1),
    ),
    child: Padding(
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.search),
          Container(
            width: 300, //add medida de largura
            padding: EdgeInsets.only(left: 16),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: "Search",
                labelStyle: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
        categoryItem(),
      ],
    ),
  );
}

Widget categoryItem() {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset("assets/Icon_Devices.png"),
  );
}

Widget productList(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        productCard(context),
        productCard(context),
        productCard(context),
        productCard(context),
      ],
    ),
  );
}

Widget productCard(BuildContext context) {
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
              MaterialPageRoute(builder: (context) => ProductPage()),
            );
          },
          child: Image.asset(
            "assets/product-1.png",
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
            "Titulo do Produto",
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
          "Marca: ",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          "\$ 200",
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
